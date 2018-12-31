#### Mux
>>>

    mux一个用来处理http请求的路由库

#### install
>>>

    go get -u github.com/gorilla/mux

#### Example
>>>

    package main

    import (
          "github.com/gorilla/mux"
      )

    func main() {
      router := mux.NewRouter()

      router.HandleFunc("/", IndexHandler).Methods("GET")
    }

#### Methods
>>>

    Vars()获取参数
