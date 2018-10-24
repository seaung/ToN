package main


import "fmt"

var (
	aa = 32
	bb = true
	cc = "storage"
)

func variableZeroValue() {
	var a int
	var b string

	fmt.Println(a, b)
	fmt.Printf("%d %q", a, b)
}

func variableInitialValue() {
	var a, b int = 2, 3

	var s string = "hello"

	fmt.Println(a, b, s)
}

func variableDeduction() {
	var a, b, s, d = 1, 2, false, "string"
	fmt.Println(a, b, s, d)
}

func variableShorter() {
	a, b, s := 1, true, "string"
	a = 2
	fmt.Println(a, b, s)
}

func main() {
	fmt.Println("hello world.")
	variableZeroValue()
	variableInitialValue()
	variableDeduction()
	variableShorter()
}