#### IPV4套接字地址结构
>>>
    1. ipv4套接口地址结构通常也称为，网际套接字地址结构
       定义在netinet/in.h头文件中

       struct sockaddr_in {
         unit8_t sin_len;
         sa_family_t sin_family;
         in_port_t sin_port;
         struct in_addr sin_addr;
         char sin_zero[8];
       };

       sin_len：整个sockaddr_in结构体的长度

       sin_family：指定地址家族，在这里必须设置为AF_INET

       sin_port：端口

       sin_addr：ipv4的地址

       sin_zero：暂时不使用，一般设置为零

    2. 通用地址结构
       struct sockaddr {
         uint8_t sin_len;
         sa_family_t sin_family;
         char sa_data[14];
       };

       sin_len：整个sockaddr结构的长度

       sin_family：指定该地址家族

       sa_data：由sin_family决定它的形式

#### 字节序转换函数
>>>
    包含头文件<arpa/inet.h>

    uint32_t htonl(uint32_t hostlong)

    uint16_t htons(uint16_t hostshort)

    uint32_t ntohl(uint32_t netlong)

    uint16_t ntohs(uint16_t netshort)

    n：表示network
    h：表示host
    s：表示short
    l：表示long

#### 地址转换函数
>>>
    包含头文件<netinet/in.h>,<arpa/in.h>

    int net_aton(const char* cp, struct in_addr *inp);
    点分十进制的地址转换为网络字节序

    in_addr_t inet_addr(const char* cp);
    点分十进制的地址转换为32位网络字节序

    char *inet_ntoa(struct in_addr in);
    地址结构转换为点分十进制的ip地址

#### 套接字类型
>>>
    1. 流式套接字(SOCK_STREAM)
       提供面向连接的，可靠的数据传输服务，数据无差错，无重复的发送，且发送顺序接收

    2. 数据报式套接字(SOCK_DGRAM)
       提供无连接服务，不提供无措保证，数据可能会丢失或者重复，并且接收顺序混乱

    3. 原始套接字(SOCK_RAW)

#### 套接字函数
>>>
    1. socket函数

       头文件包含<sys/socket.h>

       功能：创建一个套接字用于通信

       原型：int socket(int domain, int type, int protocol)

       参数：
           domain：指定通信协议族

           type：指定socket类型

           protocol：协议类型IPPROTO_TCP或者0

      返回值：成功返回非负整数，失败返回-1

    2. bind函数

       包含头文件<sys/socket.h>

       功能：绑定一个本地地址到套接字

       原型：int bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen)

       参数：
           sockfd：socket函数返回的套接字

           addr：要绑定的地址

           addrlen：地址长度

      返回值：成功返回0，失败放回-1

    3. listen函数

       包含头文件<sys/socket.h>

       功能：将套接字用于监听进入连接

       原型：int listen(int sockfd, int backlog)

       参数：
           sockfd：socket函数返回的套接字

           backlog：规定内核为此套接字排队的最大连接个数

      返回值：成功返回0，失败返回-1

    4. accept函数

       包含头文件<sys/socket.h>

       功能：从已完成连接返回第一个连接，如果已完成连接对列为空，则阻塞

       原型：int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen)

       参数：
           sockfd：socket函数返回的套接字

           addr：将返回对等方的套接字地址

           addrlen：将返回对等方的套接字长度

      返回值：成功返回非负整数，失败返回-1
