#### ForeignKey

>
    有ForeignKey的成为字表，对应没有ForeignKey的成为父表

    1. 主表查询字表内容

       先获取到主表对象，再利用主表对象进一步查询字表中的内容

       exmaple:

              parent = P.objects.all()

              result = parent.child_set.filter(name__contains='seaung')
              print(result)

              or
              result = parent.child_related_name.filter(name__contains='seaung')
              print(result)

    2. 子表查询主表内容

       先获取子表对象，再利用自表中的外键子表来获取主表对象，获得了主表对象后就可以查询到主表中的内容

       exmaple:
              
              child = C.objects.all()
              child.fk_field.parent_field_value

