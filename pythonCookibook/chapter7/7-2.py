#!/usr/bin/env python
# -*- coding:utf-8 -*-


def recv(maxsize, *, block):
    'receives a message'
    print(maxsize)

def mininum(*values, clip=None):
    m = min(values)

    if clip is not None:
        m = clip if clip > m else m
    return m


if __name__ == '__main__':
    recv(1024, block=True)

    m = mininum(1, 2, 3, 4, -4, clip=10)

    print(m)

