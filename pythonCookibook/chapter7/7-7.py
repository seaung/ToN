#!/usr/bin/env python
# -*- coding:utf-8 -*-

x = 10

a = lambda y: x + y

x = 12

b = lambda y: x + y

a(12)

b(13)

x =14

l = lambda y, x=x: x + y

l(2)

k = lambda y, x=x: x + y

k(4)

funcs = [lambda x, n=n: x+n for n in range(5)]

for f in funcs:
    print(f(0))
