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
#Ruby 异常
# begin #开始
 
#  raise.. #抛出异常
 
# rescue [ExceptionType = StandardException] #捕获指定类型的异常 缺省值是StandardException
#  $! #表示异常信息
#  $@ #表示异常出现的代码位置
# else #其余异常
#  ..
# ensure #不管有没有异常，进入该代码块
 
# end #结束

begin
	file = open("./unexistant_file")
	if file
		puts "open success"
	end
	rescue
		puts STDIN
	end
#使用retry语句
# rescue捕获异常