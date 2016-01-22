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
#Ruby 文件的输入与输出
#在内核模块中实现
#所有的IO方法派生自IO类
# IO类提供了所有的基础的方法 read write gets puts readline getc printf

#puts语句
#puts语句打印输出 在每行末尾添加新行
puts "test"
puts "test again"

#gets语句
#可用于获取STDIN的标准屏幕的用户输入
puts "Please input anything you wanna"
puts "Your input:#{gets}"

#putc语句
#输出一个字符
str="Life is short,we use Ruby"
putc str

#print语句
#与puts类似 但是不换行
print "test print"
print "test print again"

#打开关闭文件
#1.File.new方法

#File.new方法创建File对象读取写入读写等
#File.close方法关闭文件
#file=File.new("filename","mode")
#file.close方法关闭文件

#2.File.open方法
# File.open方法可与块关联，File.new方法不能
# File.open("filename", "mode") do |aFile|
#    # ... process the file
# end


#sysread方法
#读取文件的内容

#syswrite方法
#向文件中写入内容
#使用syswrite方法需要以写入模式打开手机
file = File.new("./test.txt","w+")
if file
  file.syswrite("ABCDEFG")
  file.close
else
	puts "cannot open file"
end
file = File.open("./test.txt","r+")
if file
 content = file.sysread(10)
 puts "Read content:"+content
 file.close
else
	puts "cannot open file"
end

#each_byte方法 迭代字符串中的每个字符
file = File.open("./test.txt","r+")
if file
	file.each_byte{ |ch| putc ch;putc ?.}
	file.close
end

#IO.readlines方法
#File类是 IO类的一个子类
#逐行返回文件的内容
#以一个数组的形式返回

file=File.open("./test.txt","w+")
if file
	str=""
	for  i in 0...5
		str+=(i.to_s+"\n")
	end
	file.syswrite(str)
	file.close
end
read_str=IO.readlines("./test.txt")
puts read_str
puts read_str.class.name

#IO.foreach方法
#逐行返回输出
#与块相关联

IO.foreach("./test.txt"){|b| puts b}

#重命名和删除文件
#rename和delete方法

File.rename("./test.txt","./newname.txt")
puts File::exists?("./test.txt")
puts File::exists?("./newname.txt")

File.delete("./newname.txt")
puts File::exists?("./newname.txt")

#文件模式与所有权
#chmod方法

#文件查询
#File::exists?(filename)
#File.file?(filename)
#File::directory?(name)

puts File::directory?("./")

#Ruby中的目录
#File类处理文件 Dir类处理目录
Dir.chdir("..")#改变目录为上一级目录
puts Dir.pwd
puts Dir.entries("./").join("\n")

#创建目录 Dir.mkdir
#删除目录 Dir.delete

Dir.mkdir("test")
puts File::directory?("./test")
Dir.delete("test")
puts File::directory?("./test")





