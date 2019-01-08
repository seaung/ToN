#### 使用IPBD调试python程序


>
   1. 设置断点
      import ipbd; ipbd.set_trace()

   2. 常用调试命令
      - h(help) 显示帮组命令

      - s(set into) 进入函数内部

      - n(next) 执行下一步

      - b(break) b line_number 打断点

      - cl(clear) 清除断点

      - r(return) 从当前函数返回

      - j(jump) j line_number 跳过代码片段，直接执行指定行号所在的代码

      - l(list) 列出上下文代码

      - a(argument) 列出传入函数的参数值

      - p/pp(print/pprint) 打印变量的值

      - r(restart) 重启调试器

      - q(quit) 退出调试器，清除所有信息
