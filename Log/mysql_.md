#### ubuntu 18.04安装mysql
>
    sudo apt update
    sudo apt install mysql-server

#### 安装配置
>
    sudo mysql_secure_installation

    1. N

    2. enter your mysql root password

    3. N

    4. Y

    5. N

    6. Y

    7. systemctl sattus mysql.service

#### 解决sudo下才能登录mysql
>
    1. sudo mysql -p root -p

    2. user mysql;

    3. select user, plugin from mysql.user;

    4. update mysql.user set
       authentication_string=PASSWORD('yourpassword'),plugin='mysql_native_password' where user='root';

    5. flush privileges;

    6. restart mysql server => sudo serivce mysql restart

#### 创建mysql用户
>
    命令:
         CREATE USER 'username'@'host' IDENTIFIED BY PASSWORD
         'yournewaccountpassword';

    example:
         CREATE USER 'seaung'@'localhost' IDENTIFIED BY PASSWORD '123456';

#### 授权mysql用户
>
    命令:
         GRANT priv_type ON database.table TO user [IDENTIFIED BY [PASSWORD 'password'],
         user IDENTIFIED BY PASSWORD ...] [WITH GRANT OPTION]

    example:
         GRANT all ON *.* TO 'seaung'@'localhost';

    note:
         1. priv_type 表示要赋予用户什么权限
         2. database.table
            具体是哪个数据库或者是跟具体的是哪个数据库对应的哪张表
         3. user 格式为'username'@'host'
         4. IDENTIFIED BY 设置用户密码
         5. PASSWORD 使用哈希值设置密码
         6. password 表示用户登录时的普通明文密码
         7. WITH GRANT OPTION 对新用户赋予grant权限

         grant命令也可以同时创建多个用户

#### 删除用户
>
    命令:
         DROP USER user_name[, user_name...]

         or

         DELETE FROM mysql.user WHERE host='localhost' user='seaung';

    example:
         DROP USER seaung;

#### 修改用户名
>
    命令:
         RENAME USER old_user_name TO new_user_name,[old_user_name TO
         new_user_name]

    example:
         RENAME USER 'seaung'@'localhost' TO 'seaungx'@'localhost',
         'roty'@'localhost' TO 'rory'@'localhost';

#### 修改密码
>
    1. 使用mysqladmin修改用户密码

    命令:
         mysqladmin -u username -h localhost -p password 'newpassword';

         1. username 要修改密码的用户名称
         2. -h
            指定修改的，对应的哪个主机名的密码，该参数可以不写，默认值是localhost
         3. -p 表示当前输入的密码
         4. password 是关键字不是旧密码
         5. 'newpassword' 为新设置的密码

    example:
         mysql> mysqladmin -u seaung -p password 'mypassword'
         Enter password:

    2. 使用update语句修改用户密码
       
       UPDATE mysql.user set password=PASSWORD('newpassword') where
       user='seaung' and host='localhost';

       flush privileges;

       note: 使用update语句修改用户密码完成后一定要使用flush
       privileges语句重新加载用户权限表

    3. 使用set语句修改用户密码

    命令:
         SET PASSWORD FOR user = PASSWORD('newpassword')
       
    example:
         SET PASSWORD FOR 'seaung'@'localhost'=PASSWORD('newpassword');

#### 撤销用户权限
>
    命令:
         REVOKE privileges ON databasename.tablename FROM 'username'@'host';

    example:
         REVOKE all ON *.* FROM 'seaung'@'localhost';

