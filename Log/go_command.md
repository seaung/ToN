#### 常用命令
>>>
    1. build: compile packages and dependencies
       最常用的go command之一编译go文件

    2. install: compile and install packages and dependencies
       也是编译，与build最大的区别是编译后会将输出文件打包成库放在pkg目录下

    3. go get download and install packages and dependencies
       用于获取go的第三方包，通常默认从github上pull最新的版本 -u选项指定pull最新的包

    4. go fmt gofmt (reformat) package sources
       统一代码的风格

    5. go test test pakcages
       go test -v
