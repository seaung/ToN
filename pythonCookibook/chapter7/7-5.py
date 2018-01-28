#!/usr/bin/env python
# -*- coding: utf-8 -*-

_no_value = object()

def spam(a, b=43):
    print(a, b)


def spams(a, b=None):
    if b is not None:
        b = []
    print(b)


def spam1(a, b=_no_value):
    if b is _no_value:
        print('no value')


if __name__ == '__main__':

    spam(1, 2)
    spam(1)

    spams(2)

    spam1(1)
