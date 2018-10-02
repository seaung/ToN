#!/usr/bin/ruby -w

# -*- coding:utf-8 -*-

arr = ["red", "green", "yellow", "1.2", 11]


arr.each do |i|
    puts i
end


ahash = {"google" => "google.com", "bing" => "bing.com.cn", "yahoo" => "yahoo.cn"}


ahash.each do |key, value|
    print key, value
end
