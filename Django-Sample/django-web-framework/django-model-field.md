### Django Model Field

> 
    Field options

    1. null选项：
       默认为False，如果为True，Django会把NULL作为一个空值存入数据库里面

    2. blank选项
       默认值为False，如果为True，这个字段可以允许为空

    3. choices选项:
       类似于选项卡

    4. db_index选项:
       如果为True，一个数据库的索引会创建这个字段

    5. default选项:
       为数据库字段设置默认值

    6. help_text选项:
       显示帮助信息

    7. primary_key选项:
       表示这是一个主键

    8. unique选项:
       如果为True，这个字段必须在数据库表里是唯一的


### Field Types

>
    1. AutoField

    2. BigAutoField

    3. BigIntegerField

    4. BinaryField
       存储原始的二进制数据

    5. BooleanField
       一个true/false字段

    6. CharField
       一个字符串字段
       the default from widget for this is a TextInput
       必须给的一个max_length

    7. DateField
       a date, represented in python by a datetime.date instace
       auto_now
       auto_now_add

    8. DateTimeField
       a date and time, represented in python by a datetime.datetime instance
       auto_now=False
       auto_now_add=False

    9. EmailField
       a charField that checks that the value is a valid email address using EmailValidator

    10. FileField
       a file-upload field

    11. FloatField
       a floating-point number represented in python by a float instance

    12. ImageField
       upload_to=None
       height_field=None
       witdth_field=None
       max_length=100
       **options
    
    13. IntegerField
       an integer. values from -2147483648-2147483647

    14. TextField
       a large text field. default from widget from this field is a Textarea.

    15. TimeField
       auto_now=False
       auto_now_add=False
       a time, represented in python by a datetime.time instance.

    16. URLField
       max_length=200
       a CharField for a url, validated by URLValidator.
