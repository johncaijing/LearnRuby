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

#Ruby数组
#是任何对象的有序整数索引集合
#通过索引获取元素
#索引从0开始 支持负数索引 -1表示最后一个元素
#Ruby数组不需要指定大小 向数组添加元素时，Ruby数组会自动增长

#创建数组有多种方式
#一种是直接初始化
array = [1,2,3,'a']
for i in 0...array.length
	puts "array[#{i}]=#{array[i]}"
end


for i in -array.length..-1
	puts "array[#{i}]=#{array[i]}"
end

puts array.length
array.push(6)
puts array.length
array.delete_at(0)
puts array.length

#还有一种是通过new方法
arr = Array.new(20) 
puts arr.size
puts arr.length

#给数组中的每个元素赋值
names = Array.new(3,"Mac") #大小为3 初始值为Mac的数组
puts "#{names}"

nums= Array.new(10) { |n| n=2*n+1 }
puts "#{nums}"

#创建数组的另一种方法
nums = Array.[](1,3,5,7,9)
puts "#{nums}"

#另外一种
nums = Array[1,3,5,7,9]
puts "#{nums}"

# 只接收单个参数的 Array 方法，该方法使用一个范围作为参数来创建一个数字数组
digits = Array(0..9)
puts "#{digits}"

#数组内建方法
#Array对象调用Array方法
# Array.[](...) [or] Array[...] [or] [...]
puts digits.at(6)

#数组pack指令
