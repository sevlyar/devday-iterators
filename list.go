package list

import "context"

type List struct {
	chunks []Chunk
}

type WalkFunc func(item int) bool

// (!) Walk should return signal that WalkFunc stops the iteration to inform client code.
func (list List) Walk(fn WalkFunc) bool {
	for _, item := range list.chunks {
		if !item.Walk(fn) {
			// Inform client code that iteration is stopped.
			return false
		}
	}
	return true
}

type ClosureIterator func() (int, bool)

func (list List) ClosureIterator() ClosureIterator {
	idx := 0
	inner := func() (i int, b bool) {
		return 0, false
	}
	return func() (int, bool) {
		if v, ok := inner(); ok {
			return v, true
		}
		// We always should check correctness of the function invocation by client code.
		// To prevent index out of bounds the slice and panic.
		if idx >= len(list.chunks) {
			return 0, false
		}
		inner = list.chunks[idx].ClosureIterator()
		idx++
		return inner()
	}
}

func (list List) ChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for _, chunk := range list.chunks {
			for item := range chunk.ChannelIterator() {
				pipe <- item
			}
		}
		close(pipe)
	}()
	return pipe
}

func (list List) OptimizedChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for _, chunk := range list.chunks {
			for _, item := range chunk.items {
				pipe <- item
			}
		}
		close(pipe)
	}()
	return pipe
}

func (list List) RightChannelIterator(ctx context.Context) <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for _, chunk := range list.chunks {
			for _, item := range chunk.items {
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

func (list List) Iterator() Iterator {
	return newIterator(list)
}

type Iterator struct {
	chunks []Chunk
	idx    int
	inner  ChunkIterator
}

func newIterator(list List) Iterator {
	return Iterator{
		idx: -1, chunks: list.chunks,
	}
}

func (iter *Iterator) Next() bool {
	if iter.inner.Next() {
		return true
	}
	if iter.nextChunk() {
		return iter.inner.Next()
	}
	return false
}

func (iter *Iterator) nextChunk() bool {
	iter.idx++
	if iter.idx < len(iter.chunks) {
		iter.inner = iter.chunks[iter.idx].Iterator()
		return true
	}
	return false
}

func (iter *Iterator) Value() int {
	return iter.inner.Value()
}

func (iter *Iterator) NextValue() (int, bool) {
	if iter.Next() {
		return iter.Value(), true
	}
	return 0, false
}

type initItemsFunc func(baseIdx int, data []int)

func newList(l1, l2 int, gen initItemsFunc) List {
	chunks := make([]Chunk, l1)
	for i := range chunks {
		items := make([]int, l2)
		gen(l2*i, items)
		chunks[i] = Chunk{
			items: items,
		}
	}
	return List{
		chunks: chunks,
	}
}
