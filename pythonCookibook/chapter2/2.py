#!/usr/bin/env python
# -*- coding:utf-8 -*-
from fnmatch import fnmatch, fnmatchcase

names = ['name1.txt', 'name2.csv', 'config.ini', 'foo.py']

print(fnmatch('too.txt', '*.txt'))

csv_name = [name for name in names if fnmatch(name, 'name*.csv')]

print(csv_name)

