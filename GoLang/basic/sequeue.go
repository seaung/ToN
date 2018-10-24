package main


import "fmt"


func slices() {
	arr := [...]int {2, 3, 4, 5, 6, 7, 8}
	fmt.Println(arr[:5])
	fmt.Println(arr[4:])
	s := append(arr[:], 12)
	ss := append(arr[2:], arr[3:4]...)
	fmt.Println(s)
	fmt.Println(ss)
}


func mapps() {
	var mmp map[string]int

	mmps := make(map[string]int)

	mmpss := map[string]int {"sum": 100, "do": 200, "key": 300}

	for k, v := range mmpss {
		fmt.Println(k, v)
	}

	fmt.Println(mmp, mmps)
}


func arr() {
	var arr [5] int

	arr1 := [3]int {1, 2, 3}

	arr2 := [...]int {2, 3, 4, 5, 6}

	var grid [4][6] int

	for i := 0; i < len(arr1); i++ {
		fmt.Println(i)
	}

	for i, v := range arr2 {
		fmt.Println(i, v)
	}

	fmt.Println(arr, arr2, grid)
}


func printArr(arr *[8]int) {
	for i := range arr {
		fmt.Println(arr[i])
	}
}