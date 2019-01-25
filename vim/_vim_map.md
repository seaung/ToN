#### 基本键盘映射

##### Normal模式下的键盘映射

>
    :map keyname <keyname> feature

    map => 是映射的意思
    keyname => 想要在Normal模式下映射的键盘的某个键位
    <keyname> => 想要在Normal模式下映射的键盘的某个特殊的键
    feature => 赋予这个键的功能

    example:
        " 删除当前光标下的一个字符
        :map - X

        " 删除当前光标下的一整行字符或字符创
        :map - dd

        " 当在normal模式下按下ctrl+d，就会执行删除当前光标下的一整行操作
        :map <c-d> dd

    note: 
         1. 键盘映射就无法实用注释
         2. map在normal模式下工作

    example:
        :map <space> viw " select word

        这个例子不会按照你的意图去执行你要映射的行为
        当这样设置键盘映射时，你尝试按下空格(normal模式下)，键盘映射的注释内容会插入到文本当中

##### 模式映射

>
    1. nmap => normal mode
    2. imap => insert mode
    3. vmap => visual mode

    example:
        " 在normal模式下按下 \ 键,vim会执行删除操作
        :nmap \ dd

        " 在visual模式下按下 \ 键,vim会把当前选中的行或单词装换成大写字母
        :vmap \ U

##### Insert模式映射

>
    在vim为insert模式时所设置的键盘映射

    example:
        " 在insert模式下按下ctrl+d，删除一整行
        :imap <c-d> dd

        " 按下ctr+d要退出insert模式并删除一整行,再回到insert模式
        :imap <c-d> <esc>ddi

        note:最后的ｉ是表示再次进入到insert模式

##### 递归映射

>
    各种键盘映射相互影响，导致无休无止的调用键盘映射中的映射命令

##### 非递归映射

>
    在创建键盘映射时，不会进行递归调用

    example:
        :nomap x dd
        :nnoremap \ x

        当你按下\键时，vim忽略了x的键盘映射，仅按照ｘ的默认操作执行

    note: 每个*map系列的命令都有个对应的*noremap命令，包括:
          
          1. noremap
          2. nnoremap
          3. vnoremap
          4. inoremap

##### Leaders

>
    "leader" 既前缀键

    1. 定义前缀键

       :let mapleader = "space"

    2. 定义新的键盘映射时,可以使用<leader>表示“表示我设置的leader按键”

    example:
       :nnoremap <leader>d dd

       " 当按下<leader>键和d键时，vim会删除当前行

##### Local Leaders

>
     这类的leader用于那些只对某类文件(比如python, html)而设置的映射

     1. 定义local leader

        :let maplocalleader = "\\"

