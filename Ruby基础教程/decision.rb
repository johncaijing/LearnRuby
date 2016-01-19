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

#Ruby if...else语句
#if 条件 [then]
#      代码...
#[elsif 条件 [then]
#      代码...]...
#[else
#      代码...]
#end

print "Please input a integer num:"
num = gets.chomp.to_i #获取用户屏幕输入的字符串并将其转化为整型
if num>0
	puts "#{num} is a positive number"
elsif num<0
	puts "#{num} is a negative number"
else
	puts "#{num} is zero"
end

if num<0 then num = -num end #通常then可以省略，但如果想要一行写出完整的if表达式，必须以then隔开
puts num

#Ruby if修饰符
# code if condition
$debug = 1
puts "it's debug" if $debug

#Ruby unless语句
# unless condition [then]
#   code
# [else
#      code]
# end
# unless和if作用相反 如果condition为假，则执行code，为真则执行else语句中的code
print "Are you male?"
male = gets.chomp

unless male=='true'
	puts "you are female"
else
	puts "you are male"
end

#Ruby unless修饰符
# code unless conditional
# 如果条件为假 则执行code
puts "you are male"if male=='true'
puts "you are female"unless male=='true'

#Ruby case语句
# case expression
# [when expression [, expression ...] [then]
#    code ]...
# [else
#    code ]
# end
# case先对一个 expression 进行匹配判断，然后根据匹配结果进行分支选择。

puts "How old are you?"
age = gets.chomp.to_i

case age
when 0..2
	puts "baby"
when 3..12
	puts "child"
when 13..17
	puts "teenager"
else
	puts "adult"
end

# 通常我们省略保留字 then 。若想在一行内写出完整的 when 式，则必须以 then 隔开条件式和程式区块。
case age when age>=18 then puts "you are an adult" end