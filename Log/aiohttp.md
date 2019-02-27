#### aiohttp client


##### 使用一个请求
>
    创建一个名为session的ClientSession实例
    使用该实例的get方法,返回一个ClientResponse对象的实例resq

    example 1:

        import aiohttp

        async with aiohttp.ClientSession() as session:
            async with session.get('http://httpbin.org/get') as resq:
                print(resq.status)
                print(resq.text())

    example 2:
        
        import aiohttp

        session = aiohttp.ClientSession()

        get = session.get('http://httpbin.org/get')

        post = session.post('http://httpbin.org/post', data=b'data')

        put = session.put('http://httpbin.org/put', data=b'data')

        delete = session.delete('http://httpbin.org/delete')

        head = session.head('http://httpbin.org/head')

        options = session.options('http://httpbin.org/options')

        patch = session.patch('http://httpbin.org/patch', data=b'data')

##### Url参数
>
    example 1:
        
        import aiohttp

        params = {'key1': 'value1', 'key2': 'value2'}

        async with aiohttp.ClientSession() as session:
            async with session.get('http://httpbin.org/get/', params=params) as resq:
                print(resq.status)
                print(resq.text())

##### 响应状态和响应内容
>
    example 2:
        
        import aiohttp, asyncio

        async with aiohttp.ClientSession() as session:
            async with session.get('http://httpbin.org/get') as resq:
                print(resq.status) # http响应状态
                print(resq.text()) # 响应内容
                print(resq.text(encoding='gbk2312')) # 对响应内容进行编码
                print(resq.read()) # 返回二进制内容

##### Timeouts
>
    timeout settings a stored in ClientTimeout data structure

    超时设置存储在一个ClientTimeout的数据结构中

    example:
        
        import asyncio, aiohttp

        timeout = aiohttp.ClientTimeout(total=6)
        async with aiohttp.ClientSession() as session:
            ...

##### 自定义请求头
>
    如果需要添加http请求头，可以通过传入一个字典到http的请求方法中

    example 1:
        
        import asyncio, aiohttp

        session = aiohttp.ClientSession()

        headers = {'Content-Type': 'image/gif'}

        payload = b'xjk9080sx8sdf898'

        session.post(url='http://httpbin.org/post', data=payload,
        headers=headers)

    也可以设置默认请求头到所有的session requests

    example 2:
        
        headers = {'Authorization': 'Basic bG9naW46cGFzcw=='}

        async with aiohttp.ClientSession(headers=headers) as session:
            async with session.get('http://httpbin.org/headers') as r:
                json_body = await r.json()
                assert json_body['headers']['Authorization'] == 'Basic
                bG9naW46cGFzcw=='

##### 自定义cookie
>
    可以在ClientSession中的cookie参数中构造一个cookie

    url = 'http://httpbin.org/cookies'
    cookies = {'cookies': 'cookies'}

    async with aiohttp.ClientSession() as session:
        async with session.get(url) as resq:
            assert await resq.json() == {'cookies': {}}


#### aiohttp server


##### 运行一个简单的web服务
>
    一个request handler必须是一个协程它接受一个Request对象的实例作为唯一的参数
    并且返回一个Response实例

    1. 从aiohttp中导入web
    2. 定义一个请求函数
    3. 实例化一个Application实例
    4. 将处理函数注册到路由中
    5. 调用run_app()方法运行服务

    from aiohttp import web
    import asyncio

    async def hello(request):
        return web.Response(text='hello world')

    app = Application()
    app.add_routes([we.get('/', hello)])

    web.run_app()


