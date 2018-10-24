package main


import "fmt"


func eval(a, b int, op string) (int, error) {
	switch op {
	case "+":
		return a + b, nil
	case "-":
		return a - b, nil
	case "*":
		return a * b, nil
	case "/":
		return a / b, nil
	default:
		return 0, fmt.Errorf("error operation %s", op)
	}
}


func div(a, b int) (q, r int) {
	return a / b, a % b
}


func apply(op func(int, int) int, a, b int) int {
	return op(a, b)
}

func sum(numbers ...int) int {
	s := 0

	for i := range numbers {
		s += numbers[i]
	}
	return s
}