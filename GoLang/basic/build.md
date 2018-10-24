#### 内建类型

>>>

    string, boolean

    (u)int, (u)int8, (u)init32, (u)int64, uintptr

    byte, rune(字符型) == char
    8位    32位

    float32, float64, complex64, complex128

#### 强制类型转换

>>>

    go语言的类型转换是强制的
    
    var c = int(math.Sqrt(float64(a*a+b*b)))
