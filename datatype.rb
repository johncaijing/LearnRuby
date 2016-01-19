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
# 整型
# 整型分两种，如果在31位以内（四字节），那为Fixnum实例。如果超过，即为Bignum实例。
# 整数前面加一个可选的前导符号，（0对应八进制，0x表示16进制，0b表示二进制）
# 下划线字符在数字字符串中被忽略

a1 = 12345 #Fixnum十进制
a2 = 1_000_123 #带下划线的十进制
a3 = 0373 #八进制
a4 = 0xfa3b #十六进制
a5 = 12345678901234567890# Bignum

puts a1,a2,a3,a4,a5
puts a1.class.name #获取类的名字.class.name
puts a5.class.name

# 浮点型
# 带小数的数字，浮点数是Float类的对象

f1 = 1.0 #浮点值
f2 = 1.32e6 #科学计数法
f3 = 4.23e-20 #指数前的符号
f4 = 4.23e+20
f5 = 4E20

puts f1,f2,f3,f4,f5

# 算数操作
# 加+ 减- 乘* 除/ 指数** 
# 指数不必是整数

# 使用#{expr}替换任意Ruby表达式的值为一个字符串
puts "3+4=#{3+4}"
puts "4-3=#{4-3}"
puts "3*4=#{3*4}"
puts "3/4=#{3/4}"

puts "2**2#{2**2}"
puts "2**(1/2.0)=#{2**(1/2.0)}"

# 字符串类型
# Ruby字符串是一个8位字节，是String类的对象
puts 'Hello "\\"'
puts 'I\'m John'

# 数组
# 通过[]中以逗号分隔定义,如[1,2,3]
# 支持range定义，能容纳不同类型的元素
# 通过[]索引访问
# +，-号合并或删除元素，返回新的集合
# 通过赋值操作插入删除替换元素
# 通过<<向原数据添加元素
# *号重复元素
# |和&并或交

array = [1,"aaa",3.1415,"This is a string"]
#遍历
array.each do |i|
	puts i
end
# 带下标遍历
array.each_with_index{|val,index| puts "array[#{index}]=#{val}"}

#通过[]号索引访问
puts array[1]
puts array[100]
puts array[-1]
puts array[0]
print "array[0,3]=#{array[0,3]}\n" #[0,1,2] 0开始的3个元素
print "array[0..3]=#{array[0..3]}\n" #[0,1,2,3] 

# 判空 empty?
# 判断包含 include?
# 长度 length count
puts array.empty?
puts array.include?(1)
puts array.include?(2)
puts array.length
puts array.count

# 添加元素 push或者 <<
# 在开始的位置 添加元素 unshift
# 在任意位置添加元素 insert
print array.push(5)
print array<<6
print array.unshift(1)
print array.insert(2,1)
print array.insert(3,1.1,1.1)

# 移除元素 pop
# 在开始的位置移除元素 shift
# 移除某一位置的元素 delete_at
# 移除所有某一元素 delete
print array.pop
print array.shift
print array.delete_at(4)
print array.delete(1)


arr=[1,1.123,"aaa"]
print "array=#{array}\n"
print "arr=#{arr}\n"
print "arr|array=#{arr|array}\n"
print "arr&array=#{arr&array}\n"

# 哈希类型
# 在大括号内放置键值对
# 键和值用=>分开 键值对用逗号分开

colors = {"china"=>"beijing","japan"=>"tokyo","usa"=>"washington"}
colors.each do |key,value|
	print key,"'s capital city is ",value,"\n"
end

# 范围类型
# 表示一个区间，设置开始值和结束值来表示。可用s..e（包含结束值）,s...e(不包含)或Range.new来构造

(1..5).each do |n|
	print n,' '
end

(1...5).each do |n|
	print n,' '
end

Range.new(1,5).each do |n|
		print n,' '
end

