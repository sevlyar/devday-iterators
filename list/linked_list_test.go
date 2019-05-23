package list

import (
	"context"
	"testing"
)

var TestSum int

/*
BenchmarkListIteration/Naive-8         	      			  	  10	  101589180 ns/op
BenchmarkListIteration/LinkedListIterator-8         	       5	  280782978 ns/op
BenchmarkListIteration/Walk-8                       	       3	  360250251 ns/op
BenchmarkListIteration/ClosureIterator-8            	       2	  835421574 ns/op
BenchmarkListIteration/OptimizedChannelIterator-8   	       1	12275172403 ns/op
BenchmarkList_RightChannelIterator-8   	       	   			   1	19535131252 ns/op
BenchmarkListIteration/ChannelIterator-8            	       1	31572465377 ns/op
*/

func BenchmarkListIteration(b *testing.B) {
	b.Run("Naive", BenchmarkList_Naive)
	b.Run("LinkedListIterator", BenchmarkList_Iterator)
	b.Run("Walk", BenchmarkList_Walk)
	b.Run("ClosureIterator", BenchmarkList_ClosureIterator)
	b.Run("OptimizedChannelIterator", BenchmarkList_OptimizedChannelIterator)
	b.Run("RightChannelIterator", BenchmarkList_RightChannelIterator)
	b.Run("ChannelIterator", BenchmarkList_ChannelIterator)
}

func BenchmarkList_Naive(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		for cur := list.head; cur != nil; cur = cur.next {
			for _, item := range cur.list.items {
				sum += item
			}
		}
		TestSum = sum
	}
	if TestSum != testListSum {
		b.Fatal("invalid sum")
	}
}

func Sum(list LinkedList) (sum int) {
	for cur := list.head; cur != nil; cur = cur.next {
		for _, item := range cur.list.items {
			sum += item
		}
	}
	return
}

func BenchmarkList_Walk(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		list.Walk(func(item int) bool {
			sum += item
			return true
		})
		TestSum = sum
	}
	if TestSum != testListSum {
		b.Fatal("invalid sum")
	}
}

func BenchmarkList_ClosureIterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		iter := list.ClosureIterator()
		for item, ok := iter(); ok; item, ok = iter() {
			sum += item
		}
		TestSum = sum
	}
}

func BenchmarkList_ChannelIterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		for item := range list.ChannelIterator() {
			sum += item
		}
		TestSum = sum
	}
}

func BenchmarkList_OptimizedChannelIterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		for item := range list.OptimizedChannelIterator() {
			sum += item
		}
		TestSum = sum
	}
}

func BenchmarkList_RightChannelIterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		for item := range list.RightChannelIterator(context.Background()) {
			sum += item
		}
		TestSum = sum
	}
}

func BenchmarkList_Iterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		iter := list.Iterator()
		for iter.HasNext() {
			sum += iter.Next()
		}
		TestSum = sum
	}
	if TestSum != testListSum {
		b.Fatal("invalid sum")
	}
}

func BenchmarkList_BufferedIterator(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	buf := make([]int, 4*1024)
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		iter := list.BufferedIterator()
		for {
			n := iter(buf)
			if n == 0 {
				break
			}
			for _, item := range buf[:n] {
				sum += item
			}
		}
		TestSum = sum
	}
	if TestSum != testListSum {
		b.Fatal("invalid sum: ", TestSum, testListSum)
	}
}

type IteratorIface interface {
	NextValue() (int, bool)
}

func BenchmarkList_IteratorIface(b *testing.B) {
	b.StopTimer()
	list := newTestList()
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sum := 0
		iter := list.Iterator()
		iface := IteratorIface(&iter)
		for v, ok := iface.NextValue(); ok; v, ok = iface.NextValue() {
			sum += v
		}
		TestSum = sum
	}
	if TestSum != testListSum {
		b.Fatal("invalid sum")
	}
}

// newTestList returns list that uses about 1Gb memory:
// 134217728 items on 64 bit platform, 16384 chunks by 8192 items.
// Each item is initialized by its index number.
func newTestList() LinkedList {
	return newList(16384, 8192, func(baseIdx int, data []int) {
		for i := range data {
			data[i] = baseIdx + i
		}
	})
}

const testListSum = 9007199187632128

// newShortTestList returns 1024x1024 list (1024 chunks by 1024 items)
func newShortTestList() LinkedList {
	return newList(1024, 8*1024, func(baseIdx int, data []int) {
		for i := range data {
			data[i] = baseIdx + i
		}
	})
}

func BenchmarkList_testListSize(b *testing.B) {
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		newTestList()
	}
}

func TestList_Walk(t *testing.T) {
	list := newTestList()
	var i int
	list.Walk(func(item int) bool {
		if item != i {
			t.Fatalf("invalid item at index %d: %d", i, item)
		}
		i++
		return true
	})
}

func TestList_ClosureIterator(t *testing.T) {
	list := newTestList()
	iter := list.ClosureIterator()
	var i int
	for item, ok := iter(); ok; item, ok = iter() {
		if item != i {
			t.Fatalf("invalid item at index %d: %d", i, item)
		}
		i++
	}
}

func TestList_ChannelIterator(t *testing.T) {
	list := newShortTestList()
	var i int
	for item := range list.ChannelIterator() {
		if item != i {
			t.Fatalf("invalid item at index %d: %d", i, item)
		}
		i++
	}
}

func TestList_RightChannelIterator(t *testing.T) {
	list := newShortTestList()
	var i int
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	for item := range list.RightChannelIterator(ctx) {
		if item != i {
			t.Fatalf("invalid item at index %d: %d", i, item)
		}
		i++
	}
}

func SumChannel(ctx context.Context, list LinkedList) (sum int) {
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()
	for item := range list.RightChannelIterator(ctx) {
		sum += item
		if ctx.Err() != nil {
			continue
		}
		if item > 100 {
			cancel()
		}
	}
	return
}

func TestList_Iterator(t *testing.T) {
	list := newTestList()
	iter := list.Iterator()
	var i int
	for iter.HasNext() {
		item := iter.Next()
		if item != i {
			t.Fatalf("invalid item at index %d: %d", i, item)
		}
		i++
	}
}

func TestList_BufferedIterator(t *testing.T) {
	list := newTestList()
	iter := list.BufferedIterator()
	buf := make([]int, 1000)
	var i int
	for {
		n := iter(buf)
		if n == 0 {
			break
		}
		for _, item := range buf[:n] {
			if item != i {
				t.Fatalf("invalid item at index %d: %d", i, item)
			}
			i++
		}
	}
	t.Log(i)
}
