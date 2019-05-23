package main

import "github.com/sevlyar/devday-iterators/list"

func main() {
	var l list.LinkedList
	println(SumWalk(l))
	println(SumIter(l))
}

func SumWalk(l list.LinkedList) (sum int) {
	l.Walk(func(item int) bool {
		sum += item
		return true
	})
	return
}

func SumIter(l list.LinkedList) (sum int) {
	iter := l.Iterator()
	for iter.HasNext() {
		sum += iter.Next()
	}
	return
}
