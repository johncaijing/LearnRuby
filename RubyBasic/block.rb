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
#Ruby块
# 大量的代码
# 需有个名称
# 包含在大括号内
# 块总是从与其具有相同名称的函数调用
# 使用yield语句来调用块

# block_name{
# 	statement1
# 	statement2
#     ...
# }


def test
	yield
	puts "in method"
	yield
	puts "in method again"
	puts
end

test{
	puts "in block"
}

test{
	puts "test again"
}

#可传递带参数的yield语句
#__method__ 获取当前执行方法的名字
def test_args
	yield 123
	puts "in #{__method__} method"
	yield 456
	puts "in #{__method__} method"
end

test_args{
	|i| puts "#{i} in block"#|i|用来接受参数
}

def test_multi_args
	yield 1,2
end

test_multi_args{
	|a,b| puts "#{a} #{b}"
}

# 块和方法
# 通常使用yield语句从和它具有相同名称的方法来调用块
# 1.使用yield语句调用test块
def test
	yield
end

test{
	puts "test"
}

# 2.也可通过方法的参数传递块，通过最后一个前面有&符号的参数传递
def test(&block)
	block.call
end
test{
    puts "Hello World"
}

#BEGIN块和END块
#BEGIN块：当文件被加载时要运行的代码块
#END块，程序完成时执行后要运行的代码块

BEGIN{
	puts "BEGIN code block"
}
END{
	puts "END code block"
}

puts "MAIN code block"
 
#若包含多个BEGIN和END块 ，BEGIN块按他们出现的顺序执行，END按反序执行

BEGIN{
	puts "BEGIN code block 2"
} 
END{
	puts "END code block 2"
}
