#### go语言的接口


>>>
    接口是用来定义行为的类型。这些被定义的行为不有接口直接实现
    而是通过方法由用户定义的类型实现

    如果用户定义的类型实现了某个接口类型声明的一组方法，那么这个用户定义的类型的值就可以赋给这个接口的值
    这个赋值会把用户定义的类型的值存入接口类型的值

    package main

    import "fmt"

    type notifier interface {
        notify()
    }

    type user struct {
        name string
        email string
    }

    func (u *user) notify() {
        fmt.Println(u.name, u.email)
    }

    func main() {
        u := user{"bill", "bill@gmail.com"}

        sendNotification(u)
    }

    func sendNotification(n notifier) {
        n.notify()
    }