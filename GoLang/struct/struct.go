package main


import "fmt"


type user struct {
	name string
	email string
}

func (u user) notify() {
	fmt.Println(u.name, u.email)
}

func (u user) modify(email string) {
	u.email = email
}


func main() {
	lisa := user{
		name: "lisa",
		email: "lisa@gmail.com",
	}

	bill := &user{
		name: "bill",
		email: "bill@gmail.com",
	}

	bill.notify()

	lisa.notify()
	lisa.modify("lisa.x@gmail.com")
	lisa.notify()

}