#### Requests
>
    rest framework's Request类扩展了标准的httpRequest，增加支持了灵活的request解析和request认证

#### Request parsing
>
    request.data：返回的时解析内容的请求体，这像标准的request.POST和request.FILES
    1. 包括所有的解析内容，包括文件和非文件的inputs
    2. 他支持解析http post方法和其他的方法，像put和patch的请求

    request.query_params：这个跟request.GET类似

#### Authentication
>
    request.user返回的是一个django.contrib.auth.models.User的一个实例

    如果请求是一个未认证的默认的request.user的返回值是django.contrib.auth.models.AnonymouseUser的一个实例

    request.auth返回一个任何生份下的上下文
