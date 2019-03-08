#### net--用户相关操作命令
>
    1. net user 列出所有的用户

    2. net user username password /add 添加用户

    3. net user username /del 删除用户

    4. net user username 查看用户属性

    5. net user localgroup administrator username /add 把用户添加到administrator组里

    6. net user guest /active:yes 激活guest用户

    7. net user guest 123456 设置guest用户的密码

#### net--磁盘映射操作命令
>
    1. net use 查看IPC链接

    2. net use \\ipc$ "/user:" 建立一个IPC空链接

    3. net use \\ipc$ "password" /user:"username" 建立一个非空的IPC链接

    4. net use h: \\ipc$ "password" /user:"username" 把目标的c盘映射到本地

    5. net use h: \\ipc$ 把目标c盘映射到本地,需要输入用户名跟密码

    6. net use h: /del 断开映射

    7. net use \\ipc$ 断开IPC映射

#### net--网络，系统服务相关的命令
>
    1. net start 查看系统开启了那些服务

    2. net start service_name 开启某项服务

    3. net stop service_name 停止某项服务

    4. net pause service_name 暂停某项服务

    5. net time target_ip 查看目标系统时间

    6. net time target_ip /set 设置目标系统时间与本地系统时间保持同步

    7. net view 查看本地局域网开启了哪些共享

    8. net view target_ip 查看目标局域网开启了哪些共享

    9. net password pwd 修改系统登录密码

    10. net config 显示系统网络设置

    11. net share 显示本地开启的共享

    12. net share ipc$ 开启ipc$共享

    13. net share ipc$ /del 删除ipc$共享

    14. mem 查看cup使用情况

    15. ver 查看系统版本

#### 文件目录相关操作命令
>
    1. copy con file_name 创建文件并编辑

    2. echo string > file_name 把字符串输入到某个文件中

    3. del filename 删除文件

    4. md dir_name 创建目录

    5. rd dir_name 删除目录

    6. dir 列出文件和目录

    7. tree 树型显示文件和目录

    8. copy source target 文件复制

    9. remove source target 移动文件或着目录

    10. ren s_name a_name 修改文件或者目录名字

    11. type file_name 显示文件内容

    12. more file_name 按行显示文件内容

    13. find file_name 查找文件

    14. findstr 'a' file_name 查找某文件是否有a这个字符串

    15. replace source_file target_file 文件替换

    16. rd directory 删除目录为空的文件夹

    17. rd /s/q 不管目录是否为空都删除文件夹

    18. rmdir 删除空文件夹


    
