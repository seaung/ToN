#!/usr/bin/env python
# -*- coding:utf-8 -*-
import re

line = 'asdf fjdk; afed, fjek, foo'

new_line = re.split(r'[;,\s]\s*', line)

print(new_line)
