package main

import "fmt"
import "strconv"
import "bufio"
import "os"


func convertToBin(n int) string {
	result := ""
	for ; n > 0; n /= 2 {
		lsb := n % 2

		result = strconv.Itoa(lsb) + result
	}

	return result
}


func forever() {
	for {
		fmt.Println("acb")
	}
}


func printFile(filename string) {
	file, err := os.Open(filename)

	if err != nil {
		panic(err)
	}

	scanner := bufio.NewScanner(file)

	for scanner.Scan() {
		fmt.Println(scanner.Text())
	}
}