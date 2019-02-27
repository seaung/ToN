#### python asyncio 模块
>
    1. event_loop: 事件循环对象

    2. coroutine:
       协程对象，他不会立即被调用，我们应该把他注册到事件循环当中，由事件循环在适当的时候进行调用

    3. task: 任务对协程进一步的封装


#### 栗子１
>
    import time
    import asyncio

    now = lambda : time.time()

    # 定义一个协程对象
    async def do_some_work(x):
        print('x =>', x)

    start = now()

    # 定义事件循环
    loop = asyncio.get_event_loop()

    # 把协程注册到事件循环当中
    loop.run_until_complete(do_some_work(2))

    print(now() - start)

#### 栗子２
>
    import time
    import asyncio

    now = lambda : time.time()

    # 定义一个协程函数
    async def do_some_work(x):
        print('x =>', x)

    start = now()

    # 定义事件循环对象
    loop = asyncio.get_event_loop()

    # 创建一个任务
    task = loop.create_task(do_some_work(x))

    # 开起事件循环
    loop.run_until_complete(task)

    print('time =>', now() - start)

#### 栗子３
>
    import time
    import asyncio
    import functools

    now = lambda : time.time()

    # 定义一个协程函数
    async def do_some_work(x):
        print('x =>', x)
        return '{0}'.format(x)

    # 定义一个回调函数
    def callback(future):
        print('wating => ', future.result())

    start = now()

    # 定义事件循环
    loop = asyncio.get_event_loop()

    # 创建一个函数
    task = asyncio.ensure_future(do_some_work(2))

    # task.add_done_callback(callback)
    task.add_done_callback(functools.partial(callback, 2))

    # 开起事件循环
    loop.run_until_complete(task)

    print('time =>', now() - start)

#### future and result
>
    import asyncio
    import time

    now = lambda : time.time()

    async def do_some_work(id):
        print('do some work id => ', id)
        return 'result => {0}'.format(id)

    start = now()

    loop = asyncio.get_event_loop()

    task = asyncio.ensure_future(do_some_work(2))

    loop.run_until_complete(task)

    print('task result =>', task.result())

    print('time =>', now() - start)

#### 阻塞和wait
>
    耗时的操作一般是一些IO操作，例如网络请求，文件读取
    await可以针对耗时操作进行挂起，就像yield一样让函数交出控制权

    import asyncio
    import time

    now = lambda : time.time()

    async def do_some_work(x):
        print('x =>', x)
        await asyncio.slee(x)
        return 'result value =>'.format(x)

    start = now()

    loop = asyncio.get_event_loop()

    task = asyncio.ensure_future(do_some_work(2))

    loop.run_until_complete(task)

    print('task result =>', task.result())
    print('time =>', now() - start)

#### asyncio实现并发
>
    asyncio实现并发，就需要多个协程来完成任务，每当任务阻塞的时候就wait，然后其他协程继续工作
    创建多个协程的列表，然后将这些协程注册到事件循环中

    import asyncio
    import time

    now = lambda : time.time()

    async def do_some_work(x):
        print('x =>', x)
        await asyncio.sleep(x)
        return 'value {0}'.format(x)

    start = now()

    coroutine1 = do_some_work(2)
    coroutine2 = do_some_work(4)
    coroutine3 = do_some_work(6)

    tasks = [
        asyncio.ensure_future(coroutine1),
        asyncio.ensure_future(coroutine2),
        asyncio.ensure_future(coroutine3)
    ]

    loop = asyncio.get_event_loop(asyncio.wait(tasks))

    for task in tasks:
        print('value =>', task.result())

    print('time =>', now() - start)

#### 嵌套协程
>
    import asyncio
    import time

    now = lambda : time.time()

    async def do_some_work(x):
        print('x =>', x)
        await asyncio.sleep(x)
        return x

    async def main():
        coroutine1 = do_some_work(2)
        coroutine2 = do_some_work(4)
        coroutine2 = do_some_work(6)

        tasks = [
            asyncio.ensure_future(coroutine1),
            asyncio.ensure_future(coroutine2),
            asyncio.ensure_future(coroutine3)
        ]

        dones, pendings = await asyncio.wait(tasks)

        for done in dones:
            print('done status value =>', done)
    
    start = now()

    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())

    print('time =>', now() - start)

