#### 定义变量

>>>

    1. 使用var关键字定义变量

    var a int = 1
    var s string = "string"

    可以放在函数内，也可以放在包内

    使用var()的方式集中定义变量

    2. 让编译器自动决定类型

    var a, b, c = 1, false, "cc"

    3. 使用:=定义变量

    a, b, c := 1, false, "cc"

    :=只能在函数中使用


#### 定义常量

>>>

    使用const关键字定义常量

    const filename = "filename.txt"

    const 数值可作为各种类型使用

    const a, b = 3, 4

    var c = int(match.Sqrt(a*a + b*a))

#### 定义枚举

>>>

    const (
        python = 1 iota
        java
        javascript
        cpp
    )

    fmt.Println(python, java, javascript, cpp)