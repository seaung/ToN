#### 关系字段
>>>
    1. ForeignKey
    2. ManyToManyField
    3. OneToOneField

#### related_name
>>>
    用于外键反向查询，通过父表查询到字表中的信息

    django默认给每个主表的对象都添加一个外键的属性，可以通过他来查询到属于主表的子表的信息，
    这个属性的名称默认是以子表的名称小写加上_set()来表示，默认返回的是一个querydict对象

    Example:
            class A(models.Model):
                a = models.CharField(max_length=200)

            class B(models.Model):
                a = models.ForeignKey(A, related_name="a_tab")
                b = models.CharField(max_length=32)

            默认情况下通过主表来查询子表(没有设置related_name时)

            a = A.objects.get(id=1)
            a.b_set.all()

            使用related_name时

            a = A.objects.get(id=1)
            a.a_tab.all()

#### ForeignKey
>>>
    A many-to-one relationship.
    Requires two positional arguments: the class to which the model is related and the on_delete option

    Arguments:
              ForeignKey.on_delete.CASCADE:删除级联，如a表的记录被删除时，b表相对应的记录也要被删除

              ForeignKey.on_delete.PROTECT:阻止上面的删除操作，但是抛出了ProtectdError

              ForeignKey.on_delete.SET_NULL:当父表中的记录被删除时，子表外键上的记录被设置为NULL，只有外键字段设置为null时才可以被调用，即blank=True，null=True

              ForeignKey.on_delete.SET_DEFAULT:当父表中的记录被删除时，为字表中外键字段设置一个默认值

              ForeignKey.on_delete.DO_NOTHING:当父表中的记录被删除时，子表什么也不做任何操作

              ForeignKey.on_delete.SET:设置为一个传递给SET()的值或者一个回调函数的返回值

  Example:

         class A(models.Model):
            a = models.CharField(max_length=200)

        class B(models.Model):
           a = models.ForeignKey(A, on_delete.CASCADE)
           b = models.ForeignKey(A, on_delete.PROTECT)
           c = models.ForeignKey(A, on_delete.SET_NULL, blank=True, null=True)
           d = models.ForeignKey(A, on_delete.SET_DEFAULT, default=0)
           e = models.ForeignKey(A, on_delete.DO_NOTHING)
           f = models.ForeignKey(A, SET())

#### 自关联字段
>>>
    class A(models.Model):
        a = models.CharField(max_length=200)
        pid = models.ForeignKey("self", ....)
        or
        pid = models.ForeignKey("A", ...)
