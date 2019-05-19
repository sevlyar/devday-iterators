package list

type Chunk struct {
	items []int
}

func (ch Chunk) Walk(fn WalkFunc) bool {
	for _, item := range ch.items {
		if !fn(item) {
			return false
		}
	}
	return true
}

func (ch Chunk) ClosureIterator() ClosureIterator {
	idx := 0
	return func() (int, bool) {
		// We always should check correctness of the function invocation by client code.
		// To prevent index out of bounds the slice and panic.
		if idx >= len(ch.items) {
			return 0, false
		}
		val := ch.items[idx]
		idx++
		return val, true
	}
}

func (ch Chunk) ChannelIterator() <-chan int {
	pipe := make(chan int, 1024)
	go func() {
		for _, item := range ch.items {
			pipe <- item
		}
		close(pipe)
	}()
	return pipe
}

func (ch Chunk) Iterator() ChunkIterator {
	return newChunkIterator(ch)
}

type ChunkIterator struct {
	idx   int
	items []int
}

func newChunkIterator(ch Chunk) ChunkIterator {
	return ChunkIterator{idx: -1, items: ch.items}
}

func (iter *ChunkIterator) Next() bool {
	iter.idx++
	return iter.idx < len(iter.items)
}

func (iter *ChunkIterator) Value() int {
	return iter.items[iter.idx]
}
