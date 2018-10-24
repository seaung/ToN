#### 结构体


>>>

    1. 结构类型通过组合一系列固定且唯一的字段来声明

        type user struct {
            name string
            email string
            ext int
            privileged bool
        }

    2. 使用和初始化结构

        var user lisa

        user lisa := {
            name: "lisa",
            email: "lisa@gmail.com",
            ext: 123,
            privileged: false
        }
    
    3. 使用(.)访问结构成员

        fmt.Println(lisa.name)
        fmt.Println(lisa.email)


#### 方法


>>>
    
    1. 方法能给用户定义的类型添加新的行为，
       方法实际上也是函数，只是在声明时，在关键字func和方法名之间增加了一个参数

       package main

       import "fmt"

       type user struct {
           name string
           email string
       }

       func (u user) notify() {
           fmt.Printf("sending user email to %s<%s>\n", u.name, u.email)
       }

       func (u *user) changeEmail(email string) {
           u.email = email
       }

       func main() {
           //user类型的值可以用来调用
           //使用值接受者声明的方法
           bill := user{"Bill", "bill@gmail.com"}
           bill.notify()
           

           // 指向user类型值的指针也可以用来调用
           lisa := &user{"lisa", "lisa@gmail.com"}
           lisa.notify()

           //user类型的值可以用来调用
           //使用指针接收者声明的方法
           bill.changeEmail("bill@protomail.com")
           bill.notify()
       }
    