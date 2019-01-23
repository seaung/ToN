#### urllib.request.urlopen()

>
    urlopen(url, data=None, timeout, cafile=None, capath=None, cadefault=False, context=None)

    返回对象的方法

    info()
    geturl()
    getcode()
    read(), readline(), readlines()

    exmaple:
           import urllib.request

           html = urllib.request.urlopen(url='https://www.python.org', data={'keyword': 'request'}, timeout=10)

           if html.getcode() == 200:
               print(html.info())
               print(html.geturl())
               print(html.getcode()))
               print(html.read())
               print(html.redline())
               print(html.redlines())

#### urllib.request.Request

>
    Request(url, data=None, headers={}, origin_req_host=None, unverifiable=False, method=None)

    Request对象中的方法

    Request.full_url()

    Request.type

    Request.host

    Request.data

    Request.method()

    Request.get_method()

    Request.add_header(key, value)

    Request.remove_header(header)

    Request.get_full_url()

    Request.set_proxy(host, type)

    Request.get_header(header_name, default=None)


    exmaple:
            import urllib.request


            req = urllib.request.Request(url)
            req.add_header('User-Anget', 'Mozaili/50')
            req.set_proxy('https': '127.0.0.1:1800')
            response = urllib.request.urlopen(req)
            print(response.read())

            import urllib.request

            req = urllib.request.Request(url, data=None, headers=headers)
            response = urllib.request.urlopen(req)
            print(response.read())

#### ProxyHandler, build_opener, install_opener

>
    1. ProxyHandler(proxies=None)

       proxies必须是一个字典，默认从系统环境变量中获取代理的配置

    2. build_opener([handler...])

      返回一个OpenDirector实例，handler可以使BaseHandler或者是BaseHandler的子类

    3. install_opener(opener)

      安装一个OPenerDirector实例作为默认全局的opener


    exmaple:
            import urllib.request

            url = 'https://www.google.com'

            proxy_support = urllib.request.ProxyHandler('https:':
            'https://127.0.0.1:8090')

            opener = urllib.request.build_opener(proxy_support)

            urllib.request.install_opener(opener)

            resp = urllib.request.urlopen(url)

#### urlretrieve

>
    1. urlretrieve(url, filename=None, reporthook=None, data=None)

       下载url定位到的html文件，不写文件路径名filename则会当成临时文件,可以使用urlcleanup()来清除缓存

    exmaple:
       import urllib.request

       filename = urllib.request.urlreti('https://www.google.com/%s/base.html'
       %basename)

       print(filename)

#### urllib.urljoin

>
    1. urljoin(base, url, allow_fragments=True)

       补全url全路径

    exmaple:
       import urllib.parse

       print(urllib.parse.join('https://www.cwi.nl', 'info.html'))



#### urllib.error

>
    URLError

    属性：　reason


    HTTPError

    属性：
    　　　　reason
            
            code

            headers

    exmaple:

           import urllib.request
           import urllib.error

           try:
               req = urllib.request.Request(url=url, data=None, headers=headers)
               response = urllib.request.urlopen(req)

               if response.getcode() == 200:
                   return response.read().decode('utf-8')
           except urllib.error.URLError as e:
               print(e.reason)
           except urllib.error.HTTPError as e:
               print('[*] e =>', e.reason)
               if hasattr(e, 'code') 500 <= e.code < 600:
                   urllib.request.urlopen(req)

