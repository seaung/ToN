#!/usr/bin/env python
# -*- coding:utf-8 -*-

add = lambda x, y: x + y


names = [
        'Element Settings', 'Python Language', 'Erlang Module', 'Main Package'
        ]

print(sorted(names, key=lambda name: name.split()[-1].lower()))


print(add(1, 2))


