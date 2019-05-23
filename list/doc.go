//+build ignore

package list

import (
	"context"
)

// slide Structure

type LinkedList struct {
	head *Node
	// ...
}

type Node struct {
	list ArrayList
	next *Node
}

type ArrayList struct {
	items []int
}

// slide Walk

type HandleFunc func(item int) bool

func (list LinkedList) Walk(fn HandleFunc) bool {
	for cur := list.head; cur != nil; cur = cur.next {
		if !cur.list.Walk(fn) {
			// Inform client code that iteration is stopped.
			return false
		}
	}
	return true
}

func (list ArrayList) Walk(fn HandleFunc) bool {
	for _, item := range list.items {
		if !fn(item) {
			return false
		}
	}
	return true
}

// slide Closure

type ClosureIterator func() (int, bool)

func (list LinkedList) ClosureIterator() ClosureIterator {
	cur := list.head
	inner := func() (i int, b bool) {
		return 0, false
	}
	return func() (int, bool) {
		if v, ok := inner(); ok {
			return v, true
		}
		if cur == nil {
			return 0, false
		}
		inner = cur.list.ClosureIterator()
		cur = cur.next
		return inner()
	}
}

func (list ArrayList) ClosureIterator() ClosureIterator {
	idx := 0
	return func() (int, bool) {
		if idx >= len(list.items) {
			return 0, false
		}
		val := list.items[idx]
		idx++
		return val, true
	}
}

// slide Channel

func (list LinkedList) ChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for cur := list.head; cur != nil; cur = cur.next {
			for item := range cur.list.ChannelIterator() {
				pipe <- item
			}
		}
		close(pipe)
	}()
	return pipe
}

func (list ArrayList) ChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for _, item := range list.items {
			pipe <- item
		}
		close(pipe)
	}()
	return pipe
}

//func (list LinkedList) OptimizedChannelIterator() <-chan int {
//	pipe := make(chan int, 1024)
//	go func() {
//		for cur := list.head; cur != nil; cur = cur.next {
//			for _, item := range cur.list.items {
//				pipe <- item
//			}
//		}
//		close(pipe)
//	}()
//	return pipe
//}

// Slide RightChannel

func (list LinkedList) RightChannelIterator(ctx context.Context) <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for cur := list.head; cur != nil; cur = cur.next {
			for _, item := range cur.list.items {
				select {
				case <-ctx.Done():
					close(pipe)
					return
				case pipe <- item:
				}
			}
		}
		close(pipe)
	}()
	return pipe
}

//func (list LinkedList) BufferedIterator() func(b []int) int {
//	cur := list.head
//	j := 0
//	return func(b []int) (n int) {
//		for cur != nil {
//			for j < len(cur.list.items) && n < len(b) {
//				b[n] = cur.list.items[j]
//				j++
//				n++
//			}
//			if n >= len(b) {
//				return
//			}
//			cur = cur.next
//			j = 0
//		}
//		return
//	}
//}

// slide Iterator

func (list LinkedList) Iterator() LinkedListIterator {
	return newLinkedListIterator(list)
}

type LinkedListIterator struct {
	cur   *Node
	inner ArrayListIterator
}

func newLinkedListIterator(list LinkedList) LinkedListIterator {
	i := LinkedListIterator{cur: list.head}
	i.initInner()
	return i
}

func (iter *LinkedListIterator) HasNext() bool {
	return iter.inner.HasNext()
}

func (iter *LinkedListIterator) Next() int {
	v := iter.inner.Next()
	if !iter.inner.HasNext() {
		iter.cur = iter.cur.next
		iter.initInner()
	}
	return v
}

func (iter *LinkedListIterator) initInner() {
	if iter.cur != nil {
		iter.inner = iter.cur.list.Iterator()
	}
}

func (list ArrayList) Iterator() ArrayListIterator {
	return newArrayListIterator(list)
}

type ArrayListIterator struct {
	idx   int
	items []int
}

func newArrayListIterator(ch ArrayList) ArrayListIterator {
	return ArrayListIterator{items: ch.items}
}

func (iter *ArrayListIterator) HasNext() bool {
	return iter.idx < len(iter.items)
}

func (iter *ArrayListIterator) Next() int {
	v := iter.items[iter.idx]
	iter.idx++
	return v
}
