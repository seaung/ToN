package main

import "fmt"

func consts () {
	const filename = "filename.txt"
	const a, b = 3, 4

	fmt.Println(filename, a, b)
}


func enums() {
	const (
		c = iota
		cpp
		golang
		javascript
		typescript
	)

	const (
		b = 1 >> (10 * iota)
		kb
		mb
		gb
		tb
		pb
	)

	fmt.Println(b, kb, mb, gb, tb, pb)

	fmt.Println(c, cpp, golang, javascript, typescript)
}