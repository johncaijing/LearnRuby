#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require './fileRead'

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end

#迭代：重复做相同的事
#迭代器是集合支持的方法
#在Ruby中，数组和哈希称之为集合
#两种迭代器;each和collect

#Ruby each迭代器 与一个块关联
# collection.each do |variable|
#    code
# end
array = (1..5).to_a
array.each do |i|
	puts i
end

#Ruby collect迭代器 不需要总是与一个块关联 需要对集合中每个元素做一些操作得到新的集合时，使用collect方法
# collection = collection.collect
b = array.collect{|x| x=x*2-1}
print b

#数组间复制 用clone
c = array.clone
print c

d = array.collect{|x| x}
print d