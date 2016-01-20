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

#Ruby方法
#方法名以小写字母开头 
# def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
#    expr..
# end

#定义一个简单的方法

# def method_name
# 	expr..
# end
def foo
	puts "foo"
end
#调用方法
#method_name
foo
foo()

#定义一个接受参数的方法
# def method_name(var1,var2)
# 	expr..
# end

def foo_args(var1,var2)
	puts "var1=#{var1} var2=#{var2}"
end

#调用带参数的方法
#method_name 1,2

foo_args 1,2
foo_args(1,2)

#设置默认参数
# def method_name(var1=value1,var2=value2)
# 	expr..
# end
def foo_default_args(var1=0,var2=100)
	puts "var1=#{var1} var2=#{var2}"
end

foo_default_args
foo_default_args 3,5

#使用带参数方法的最大的缺点就是调用方法时需要记住参数个数，个数不对，Ruby会显示错误
# foo_args 1  
# foo_args 1,2,3
 # wrong number of arguments (1 for 2)

 #从方法返回值
 #Ruby 中每个方法默认都返回一个值
 #这个返回值就是最后一个语句的值
 def test_return
 	a=1
 	b='c'
 	c="abcdefg"
 end

puts test_return

#Ruby return语句
#可从方法中返回一个或多个值 (多个值返回的是一个array)
# return [expr[`,' expr...]]

def test
	a=1
 	b='c'
 	c="abcdefg"
 	return a,b,c
end
result=test
print result
puts result.class.name

#可变数量的参数
def change_arg(*args)
	puts "the length of args:#{args.length}"
	for i in 0...args.length
		print "#{args[i]}"," "
		if i==args.length-1
			print "\n"
		end
	end
end

change_arg 1,"c",2.3
change_arg "afefe","fef",3,4,5

#类方法
#方法定义在类外部 默认是private的 
#方法定义在类内部，默认标记为public
#方法的可见性可通过模块的public或private改变
#Ruby提供一种不用实例化即可访问方法的方式

class Foo
	def test
		puts "Instance method"
	end
	def Foo.test
		puts "Class method"
	end
end

Foo.test
foo = Foo.new
foo.test

#Ruby alias语句
#用于给方法或全局变量起别名
#方法被重写 方法的别名也保持方法的当前定义
def test_alias
	puts "just test alias"
end
#alias 新名字 旧名字
test_alias
alias teeest test_alias
teeest

# Ruby undef语句
# 用于取消方法定义
# 使用undef和alias 类的接口可以从父类独立修改
# undef 方法名
undef teeest
# teeest  undefined local variable or method `teeest'
test_alias




