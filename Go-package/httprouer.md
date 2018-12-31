#### Package httprouter
>>>
    httprouter是一个高性能的http请求路由库

#### install
>>>

    go get -u github.com/julienschmidt/httprouter

#### Example
>>>

    package main

    import (
        "github.com/julienschmidt/httprouter"
        "net/http"
        "log"
        "io"
      )

    func IndexHandler(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
      io.WriterString(w, "index handler")
    }

    func main() {
      router := httprouter.New()

      router.GET("/", IndexHandler)

      log.Fatal(http.ListenAndServe(":9090", router))
    }

#### 自己常用的方法
>>>

    1. New() // 不是常用这个是必须的，兄die <-_<-
    创建一个router路由器
    r := httprouter.New()

    2. Param // 获取单个参数

    func xxxHandler(w http.ResponseWriter, r *http.Request, p httprouter.Param) {}

    3. Params // 获取多个参数

    func xxxHandler(w http.ResponseWriter, r *http.Request, p httprouter.Params) {}

    4. ByName() // 获取参数的值

    func xxxHandler(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
      age := p.ByName("age")
      io.WriterString(w, apge)
    }
