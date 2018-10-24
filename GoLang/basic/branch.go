package main


import "fmt"
import "io/ioutil"


func grade(score int) string {
	g := ""

	switch {
	case score < 0 || score > 100:
		panic("error")
	case score < 60:
		g = "F"
	case score < 70:
		g = "C"
	case score < 80:
		g = "B"
	case score < 90:
		g = "A"
	case score <= 100:
		g = "A+"
	}
	return g
}


func read() {
	const filename = "abc.txt"

	fmt.Println(grade(88))

	//contents, err := ioutil.ReadFile(filename)

	if contents, err := ioutil.ReadFile(filename); err != nil {
		fmt.Println(err)
	} else {
		fmt.Printf("%s \n", contents)
	}

	//if err != nil {
	//	fmt.Println(err)
	//} else {
	//	fmt.Println("%s ", contents)
	//}
}