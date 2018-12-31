#### Cli
>>>

    用于编写命令行工具的一个库

#### install
>>>

    go get -u github.com/urfave/cli

#### Example
>>>

    func main() {
      app := cli.NewApp()
      app.Name = "greet"
      app.Usage = "greet"
      app.Action = func(c *cli.Context) error {
        fmt.Println("greet")
        return nil
      }
      app.Run(os.Args)
    }
