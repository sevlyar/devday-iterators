package main

import "github.com/sevlyar/devday-iterators/list"

func main() {
	var l list.List
	println(SumWalk(l))
	println(SumIter(l))
}

func SumWalk(l list.List) (sum int) {
	l.Walk(func(item int) bool {
		sum += item
		return true
	})
	return
}

func SumIter(l list.List) (sum int) {
	iter := l.Iterator()
	for iter.Next() {
		sum += iter.Value()
	}
	return
}
