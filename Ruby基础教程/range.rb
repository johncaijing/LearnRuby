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

#Range范围
#以不同的方式使用范围：
#序列的范围 条件的范围 间隔的范围

#作为序列的范围
#表达序列

range=(1..5)#1,2,3,4,5 [1,5]
print range.to_a #Range转化为Array
range=(1...5)#1,2,3,4 [1,5)
print range.to_a

range1=('a'..'z')
print range1.to_a

puts

digits = 0..9
puts digits.include?(3)
puts digits.include?(11)

puts digits.min 
puts digits.max

puts digits.reject{|i| i>5}
digits.each do |digit|
  puts "in loop #{digit}" 
end

#作为条件的循环 
#用作条件表达式
# while gets
#    print if /start/../end/
# end

puts "Please input your age:"
age = gets.chomp.to_i

result = case age
	when 0..3
		"baby"
	when 4..18
		"child"
	else
		"adult"
	end

	puts result

#作为间隔的范围
#间隔检测 检查指定值是否在指定的范围内 
#使用===相等运算符来完成计算
puts "Please input your number:"
num = gets.chomp.to_i
if((1..5)===num)
	puts "#{num} in (1...5)"
else
	puts "#{num} not in (1...5)"
end

