#### 数组


>>>

    1. 定义数组

        var arr [5] int

        arr1 := [3]int {2, 3, 4}

        arr2 := [...]int {1, 2, 3, 4}

        var grid [4][5]bool

        fmt.Println(arr, arr1, arr2, grid)
    
    2. 数组的遍历

       1. 传统遍历

           for i := 0; i < len(arr1); i++ {
               fmt.Println(arr1[i])
           }
       
       2. 使用range关键字

           for i, v := range arr1 {
               fmt.Println(i, v)
           }

    3. 数组是值类型

       1. [10]int和[20]int是不同类型

       2. 调用func f(arr [10]int) 会拷贝数组

       3. go语言中一般不直接使用数组


#### 切片

>>>

    1. 定义切片
        
        arr := [...]int {1, 2, 3, 4, 5, 6, 7, 8, 9}

        fmt.Println(arr[2:6])
        fmt.Println(arr[:4])

    2. 内部实现

        切片是一个很小的对象，对底层数组进行了抽象，并提供相关的操作方法
        切片有3个字段的数据结构，这些数据结构包含go语言需要操作底层数组的元数据

        这3个字段分别指向底层数组的指针，切片访问的元素的个数即长度和允许增长到的元素个数即容量

    3. 使用make进行切片的定义

        slices := make([]string, 5) // 定义了一个string类型的slice，长度和容量都为5的slice

        slices := make([]int, 5, 7) // 定义了一个类型为int，长度为5，容量为7的slice

        note: 不允许创建的容量小于长度的切片
    
    4. 使用append扩展slice

        s := append(slices, 12)

    5. 计算长度和容量

        对底层数组容量是k的切片slices[i:j]

        长度: j-i
        容量: k-i

        例如:
            对于底层数组容量为5的切片slice[1:3]

            长度：3-1 = 2
            容量：5-1 = 4


#### map映射

>>>

    1. 创建map
        
        var maps map[string]int

        mmp := make(map[string]int)

        mmps := map[string]int {"google":101, "msd": 222}
    
    2. 遍历map

        for k, v := range mmps {
            fmt.Println(k, v)
        }

    3. 删除map中的一项

        delete(mmps, "google")

    note:
         1. 创建：make(map[string]int)
         2. 获取元素：m[key]
         3. key不存在时，获得value类型的初始化值
         4. 用value，ok:= m[key]来判断是否存在key
         5. delete删除某个key
         6. 使用range遍历key，或者遍历key，value对
         7. 不保证遍历顺序，如需顺序，需要手动对key排序
         8. map的key使用哈希表，必须可以比较相等
         9. 除了slice，map，function的内建类型都可以作为key
         10. Struct类型不包含上述字段，也可以作为key
