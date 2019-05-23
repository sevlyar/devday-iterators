package list

type ArrayList struct {
	items []int
}

func (list ArrayList) Walk(fn WalkFunc) bool {
	for _, item := range list.items {
		if !fn(item) {
			return false
		}
	}
	return true
}

func (list ArrayList) ClosureIterator() ClosureIterator {
	idx := 0
	return func() (int, bool) {
		// We always should check correctness of the function invocation by client code.
		// To prevent index out of bounds the slice and panic.
		if idx >= len(list.items) {
			return 0, false
		}
		val := list.items[idx]
		idx++
		return val, true
	}
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
