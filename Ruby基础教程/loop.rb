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

# Ruby循环 用于执行相同的代码若干次
# Ruby While语句
# while conditional  |do|
# 	code
# end

# while conditional [:]
#    code
# end

$i=0
$num =5

while $i < $num do
	puts("in loop i = #{$i}")
	$i+=1
end

print "\n"

$i=0
$num = 5
while $i<$num
	puts("in loop i = #$i")
	$i+=1
end

print "\n"

# Ruby While修饰符
# code while condition
# begin
#  code
# end while conditional
$i=0
$num =5
begin
	puts("in loop i = #{$i}")
	$i+=1
end while $i<$num

# Ruby until语句
#until conditional |do|
#     code
#end
#conditional为假时执行code
print "\n"

$i=0
$num=5

until $i>$num do
	puts "in loop i = #$i"
	$i+=1
end

# Ruby until修饰符
# code until conditional
#
# begin 
# 	code
# end until conditional
#conditional为假时执行code
print "\n"
$i = 0
$num = 5
begin
   puts("in loop i = #$i" )
   $i +=1;
end until $i > $num

#Ruby for语句
# for variable [, variable ...] in expression [do]
#    code
# end
for i in 0..5
	puts "in loop i=#{i}"
end

#or...in 循环几乎是完全等价于
# (expression).each do |variable[, variable...]| code end
(0..5).each do |i|
	puts "in loop #{i}"
end

#Ruby break语句
#break
#终止最内部的循环
#块内调用，终止相关块方法(返回nil)
print "please input a number between 0 and 5(include):"
$num = gets.chomp.to_i  
until $num<6&&$num>-1 do
	print "Please input a correct number between 0 and 5:"
	$num=gets.chomp.to_i
end

for i in 0..5
	if i==$num then
		puts "equal"
		break
	end
	puts "Your input is #{$num} and in loop #{i}"
end

#Ruby next语句
# next
#跳到循环的下一个迭代
for i in 0..5
	if i!=$num then
		puts "not equal"
		next
	end
	puts "Your input is #{$num} and in loop #{i}"
end

#Ruby redo语句
# redo
# 重现开始最内部循环的该次循环
for i in 0...1
    print "please input a number between 0 and 5(include):"
	num = gets.chomp.to_i
	if num<0||num>5 then
		redo
	end
end

#Ruby retry语句
#retry
begin
	print "please input a number between 0 and 5(include):"
	num = gets.chomp.to_i
	if num<0||num>5 
		raise 'a wrong number inputed'
	end
rescue
	retry
end


