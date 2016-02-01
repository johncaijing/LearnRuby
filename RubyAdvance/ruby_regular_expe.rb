#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require_relative "../RubyBasic/fileRead"

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end

#正则表达式：特殊序列的字符，通过专门语法的模式匹配或查找字符串集合

#语法
# /pattern/
# /pattern/im #可指定选项
# %r!/usr/local! #使用分隔符的正则表达式

l1 = "Cats are smarter than dogs"
l2 = "Dogs like meat"

if(l1=~/Cats(.*)/)
	puts "l1 contains Cats"
end
if(l2=~/Dogs(.*)/)
	puts "l2 contains Dogs"
end

#在线测试Ruby正则表达式的网站 http://www.rubular.com/
#http://www.cnblogs.com/cnblogsfans/archive/2009/02/02/1382745.html

puts /a/.class
#Ruby的正则表达式返回一个Regexp对象

#正则表达式操作
#String和Regexp有两种查询匹配的方法
#1. =~  --------->返回匹配的字符串的位置
#2. match-------->返回MatchData对象或nil(不匹配)

puts "helloabcdefg"=~/abcd/
puts /abcd/.match("helloabcdefg").class
puts /abcd/.match("helloabcdefg")
puts /abcd/.match("efghhello").class

#不匹配 !~ --->返回true或false
puts "helloabcdefg"!~/abcd/
puts "helloabcdefg"!~/opqr/

#搜索和替换
#sub和gsub--->返回一个新的字符串(sub和gsub的区别:g代表global)
#sub!和gsub!--->修改原字符串

str1="abcd12345"

puts str1.sub(/\D/,"")
puts str1

puts str1.gsub(/\D/,"")
puts str1

puts str1.gsub!(/\D/,"")
puts str1

