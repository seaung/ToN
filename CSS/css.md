#### CSS

>>>
    1. css样式单的基本使用

	   - 链接外部样式文件：这种方式将样式文件彻底与html文档分离，样式文件需要额外引入
	     <link href="" rel="stylesheet" type="text/css" />

	   - 导入外部样式文件：这种方式与上一种方式类似，只是使用@import来引入外部样式单
	     @import urladdress sMedia;

	   - 使用内部样式定义：这种方式是通过在html文档定义样式单部分来实现的
	
	2. css选择器

	   - 元素选择器

	     E {...} 

	   - 属性选择器

	     E{...}：指定该css样式对所有E元素器作用

		 E[attr]{...}：指定该css样式对具有attr属性的E元素器作用

		 E[attr=value]{...}：指定该css样式对所有包含attr属性，且属性为value的E元素起作用

		 E[attr~=value]{...}：指定该css样式对所有包含attr属性，且attr属性的值为以空格隔开的系列值，其中某个值为value的E、元素器作用

		 E[attr|=value]{...}：指定该css样式对所有包含attr属性，且attr属性的值为以连字符分隔的系列值，其中第一个值为value的tag元素器作用

		 E[attr^="value"]{...}：指定该css样式对所有包含attr属性，且attr属性的值为以value开头的字符串的E元素起作用

		 E[attr$="value"]{...}：指定该css样式对所有包含attr属性，且attr属性的值为以value结尾的字符串的E元素起作用

		 E[attr="value"]{...}：指定该css样式对所有包含attr属性，且attr属性的值为包含value的字符串中的E元素器作用


