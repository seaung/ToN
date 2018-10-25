#### defer调用

>>>
    1. 确保调用在函数结束是发生

    2. 参数在defer语句是计算

    3. defer列表为后进先出

#### 何时使用defer

>>>
    1. Open/Close

    2. Lock/Unlock

    3. PrintHeader/PrintFooter

#### 错误处理

>>>
    1. 函数可以返回一个错误

    2. 自定义错误使用errors.New()

#### panic 和 recover

>>>
    - panic
        1. 停止当前函数执行

        2. 一直向上返回，执行每一层的defer

        3. 如果没有遇到recover，程序就退出

    - recover
        1. 仅在defer调用中使用

        2. 获取panic的值

        3. 如果无法处理，可重新panic

        defer func() {
            r := recover()

            if err, ok := r.(error); ok {
                fmt.Println(err)
            } else {
                panic(r)
            }
        }()