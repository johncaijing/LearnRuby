#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$KCODE = 'u'
require './fileRead'

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end

#Ruby字符串（String）
#Ruby字符串分为单引号('')和双引号字符串("")

#单引号字符串
#转义单引号 \'  转义反斜杠 \\
puts 'I\'m John \\'

#双引号字符串
#在双引号中，使用#{}来计算表达式的值
x =3
y =4
str = "x+y"
puts "#{str}=#{x+y}"

#Ruby还支持%q和%Q来引导的字符串变量 用于字符串中引号多的情况 %Q %q {} || ()
desc=%Q{Ruby '' "" test}
desc=%q{''""tt""''}
desc=%Q(''""fefef)
puts desc

#转义字符
#在程序开头使用$KCODE改变字符集

#字符内建方法
str1=String.new("THIS IS TEST")
str2="this is test too"

puts "#{str1.downcase}"
puts "#{str2.upcase}"

#字符串unpack指令
puts "whole".unpack('xax2aX2aX1aX2a') 
puts "".unpack('X1a')