#### 指针


>>>
    1. 定义指针
        var a int = 2

        var pa *int = &a

        *pa = 3

        fmt.Println(pa, a)
    
    2. 指针不能进行运算

    3. go语言只有值传递一种方式