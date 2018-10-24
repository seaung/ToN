#### 封装

>>>

    1. 名字一般使用驼峰命名

    2. 首字母大写：public

    3. 首字母小写：private


#### 包

>>>

    1. 每个目录一个包

    2. main包包含可执行入口

    3. 为结构定义的方法必须放在同一个包内

    4. 可以使不同文件

#### main包


>>>
    在go语言里，命名为main的包具有特殊的含义

    go语言的编译器会试图把这种名字的包编译为二进制可执行文件

    所有用go语言编译的可执行程序都必须有一个名叫main的包

    当编译器发现某个包的名字为main时，它一定也会发现main()函数，否则不会创建可执行文件


#### 导入

>>>
    1. 一般导入

        import package_name

    2. 导入远程包

        import remote_package_path

    3. 命名导入

        import custom_name package_name

    4. 组合导入

        import (
            package_name1,
            package_name2,
            ...
        )
