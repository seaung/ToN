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

```

```
    8. 获取容器的日志

    command:
            docker tags -f docker_container

    参数解释:
           -f 监控docker的日志，这个与tail -f 命令非常相似
    
    note:
         可以通过ctrl+c退出日志的跟踪
         docker logs --tail 10 docker_container 获取最后10行的日志内容
         docker logs --tail 0 -f docker_container 获取容器的最新日志内容
```

```
    9. 查看容器内的进程

    command:
            docker top docker_container
```

```
    10.停止守护式容器

    command:
            docker stop docker_container | docker_container_id
```

```
    11. 自动重启容器
    
    command:
            docker run --restart=always --name docker_container_name | -d docker_base_image docker_run_command
    参数解释:
            --restart标志会检查容器的退出代码，并根据此来决定是否要重启容器，默认的行为是docker不会重启容器
    
    note:
          --restart设为always表示容器的退出代码是什么，docker都会重启容器
          当设为no-failure时，只有容器的退出代码为非零时才重启容器
          另外on-failure选项还接受一个可选参数
          重启参数： --restart=on-failure：5
```

```
    12. 获取更多容器的信息

    command:
            docker inspect docker_container

    参数解释:
           -f | --format 用来查看结果

           例如：
                docker inspect --format={state.running}
```

```
    13. 删除容器

    command:
            docker rm container_name | ID

    note:
         运行中的docker容器是无法删除的，必须通过Docker stop 或者Docker kill命令将其停止，才能将容器删除
         目前还没有一次性删除所有容器

         docker rm `docker ps -a -q`

         ps命令会列出全部容器，-a代表列出所有的容器，-q表示需要返回容器的Id而不是其他信息，这样就可以得到容器的id列表
         并将传给docker rm命令，从而达到删除所有容器的目的
```

```
    14. 列出镜像

    command:
            docker images image_name

```

```
    15. 拉取镜像

    command:
            docker pull images_name
```

```
    16. 查找镜像

    command:
            docker search images_name
```
