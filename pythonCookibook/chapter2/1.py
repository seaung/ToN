#!/usr/bin/env python
# -*- coding:utf-8 -*-
from urllib.request import urlopen
filename = 'span.txt'

res = filename.endswith('.txt')

print(res)

rest = filename.startswith('filename:')

print(rest)

url = 'https://www.python.org'

print(url.startswith('https:'))


def read_data(name):
    if name.startswith(('http:', 'https:', 'ftp:')):
        return urlopen(name).read()
    else:
        with open(name) as f:
            return f.read()


if __name__ == '__main__':
    choices = ('http:', 'https:')
    url = 'http://www.python.org'
    rest = read_data(url)
    print(rest)

