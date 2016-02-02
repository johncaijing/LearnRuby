#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

3.times do
	class Foo
		puts "Hello World"
	end
end

# 并没有定义三个同名的类

#第一次定义D的时候 D类并不存在
#Ruby开始定义这个类 并定义x方法
class D
	def initialize
		puts "init in first"
	end
	def x
		puts 'x'
	end
end

#D类已经存在，Ruby不再定义
#只是重新打开这个已经存在的类，
#并定义y方法
class D
	def initialize
		puts "init in second"
	end
	def y
		puts 'y'
	end
end

d = D.new
d.x
d.y
