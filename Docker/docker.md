##### Docker基本命令

```
    1. 查看docker程序是否存在，功能是否正常

    command: 
            docker info [docker container name]
```

```
    2. 创建一个docker容器

    command: 
            docker run -i -t docker_base_image docker_execute_command

    参数解释:
           -i : 制定标准输入输出
           -t : 打开一个tty伪终端
    
    docker_base_image : 制定构建容器的基础镜像
    docker_execute_command : 制定容器启动后要执行的命令
```

```
    3. 查看当前系统中容器的列表

    command:
            docker ps -a [-l]
    
    参数解释:
            -a 列出当前系统中所以的容器
            -l 列出最后一次运行的容器，包括运行中的和已经停止的
```

```
    4. 容器命名

    command:
            docker run --name container_name -i -t docker_base_image docker_execute_command

    参数解释:
            --name 选项来实现容器的命名
    
    note: 默认情况下docker会为我们创建的每个容器自动生成一个随机的名称
```

```
    5. 重新启动已经停止的容器

    command:
            docker start docker_container_name | ID
    
    note: 也可以使用restart命令来重新启动一个容器
```

```
    6. 附着到容器上

    command:
            docker attach docker_container_name | ID
    
    note: 使用该命令重新启动容器时，会沿用Docker run 命令是制定的参数来运行容器
```

```
   7. 创建守护式容器

   command:
           docker run --name docker_container_name -d docker_base_image docker_execute_command

   参数解释:
          -d 选项会将docker容器放到后台上运行
```
