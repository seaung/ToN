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
            response = urllib.request.urlopen(req)
            print(response.read())

            import urllib.request

            req = urllib.request.Request(url, data=None, headers=headers)
            response = urllib.request.urlopen(req)
            print(response.read())

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

