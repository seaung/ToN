#### Test 的写法
>>>
    1. 每个test文件必须import一个testing

    2. 每一个文件的每一个test case均必须以Test开头并且符合TestXXX形式
       否则go test会直接跳过测试不执行

    3. test case的输入参数为t *testing.T或者 *testing.B
       *testing.B 测试性能

    4. t.Errorf为打印错误信息，并且当前test case会被跳过

    5. t.SkipNow()为跳过当前test并直接按pass处理，继续下一个test

    6. t.ShipNow()应该写在test case的第一行

    note: go test不会保证多个testing是顺序执行，但通常会被顺序执行

    7. 使用t.Run()来执行test，subtests可以控制test的输出以及test的顺序

    8. 使用TestMain作为初始化test，并且使用m.Run()来调用其他test可一个完成
    一些需要初始化操作的testing，比如数据库连接，文件打开，rest服务器登录等

    note:如果没有在TestMain中调用m.Run()则除了TestMain以外的其他tests都不会被执行

    example:
            func testing(t *testing.T) {
              t.Run("testing 1", testing1)
              t.Run("testing 2", testing2)
              ...
            }

            func TestMain(t *testing.M) {
              m.Run()
            }

#### Test之benchmark
>>>

    1. benchmark函数一般以Benchmark开头

    2. benchmark的case一般会跑b.N次，而且每次执行都会如此

    3. 在执行过程中会根据实际case的执行时间是否稳定，增加b.N的次数以达到稳态

    example:

            func BenchmarkAll(b *testing.B) {
              for n := 0; n < b.N; n++ {
                fmt.Println(n)
              }
            }
