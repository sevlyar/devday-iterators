package list

import (
	"context"
)

type LinkedList struct {
	head *Node
}

type Node struct {
	list ArrayList
	next *Node
}

type WalkFunc func(item int) bool

// (!) Walk should return signal that WalkFunc stops the iteration to inform client code.
func (list LinkedList) Walk(fn WalkFunc) bool {
	for cur := list.head; cur != nil; cur = cur.next {
		if !cur.list.Walk(fn) {
			// Inform client code that iteration is stopped.
			return false
		}
	}
	return true
}

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
		// We always should check correctness of the function invocation by client code.
		// To prevent index out of bounds the slice and panic.
		if cur == nil {
			return 0, false
		}
		inner = cur.list.ClosureIterator()
		cur = cur.next
		return inner()
	}
}

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

func (list LinkedList) OptimizedChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for cur := list.head; cur != nil; cur = cur.next {
			for _, item := range cur.list.items {
				pipe <- item
			}
		}
		close(pipe)
	}()
	return pipe
}

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

func (list LinkedList) BufferedIterator() func(b []int) int {
	cur := list.head
	j := 0
	return func(b []int) (n int) {
		for cur != nil {
			for j < len(cur.list.items) && n < len(b) {
				b[n] = cur.list.items[j]
				j++
				n++
			}
			if n >= len(b) {
				return
			}
			cur = cur.next
			j = 0
		}
		return
	}
}

func (list LinkedList) Iterator() LinkedListIterator {
	return newLinkedListIterator(list)
}

type Iterator interface {
	HasNext() bool
	Next() int
}

type LinkedListIterator struct {
	cur   *Node
	inner ArrayListIterator
}

func newLinkedListIterator(list LinkedList) LinkedListIterator {
	i := LinkedListIterator{
		cur: list.head,
	}
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

func (iter *LinkedListIterator) NextValue() (int, bool) {
	if iter.HasNext() {
		return iter.Next(), true
	}
	return 0, false
}

type initItemsFunc func(baseIdx int, data []int)

func newList(l1, l2 int, gen initItemsFunc) LinkedList {
	var head *Node
	var cur *Node
	for i := 0; i < l1; i++ {
		items := make([]int, l2)
		gen(l2*i, items)
		n := &Node{list: ArrayList{items: items}}
		if cur == nil {
			head = n
			cur = n
			continue
		}
		cur.next = n
		cur = n
	}
	return LinkedList{
		head: head,
	}
}
