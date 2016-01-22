#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require './fileRead'
# require 'Math'

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end
#Ruby模块
#是一种把方法、类和常量组合在一起的方式。
#1.模块提供一个命名空间 避免名字冲突
#2.模块实现了mixin装置
# 
# module Identifier
# 	statement1
# 	statement2
# 	......
# end
#调用模块方法:模块名.模块方法名
#引用模块常量:模块名::模块常量

module Test
	PI = 3.1415
	def foo
		puts "foo method in Test module"
	end

	def Test.foo
		puts "Test.foo method in Test module"
	end

	def Test.sin(x)
		return Math.sin(x)
	end

end

module SameMethodName
	def SameMethodName.foo
		puts "SameMethodName.foo method in SameMethodName module"
	end
end

puts Test::PI
Test.foo
SameMethodName.foo

#Ruby Require语句
#类似于include语句(C或C++中),import语句(Java中)
#Ruby require语句来加载模块文件
# require filename

#具体例子见moduletest.rb文件

#文件可能包含相同的函数名称 为避免模糊 可使用模块名称调用函数

#Ruby include语句
# 使用include语句在类中嵌入模块
# include modulename
$LOAD_PATH<<'.'
require "moduleweek"

class Decade
include Week
    no_of_years=10
    def no_of_months
    	puts Week::FIRST_DAY
    	number=10*12
    	puts number
    end
end

decade=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
decade.no_of_months

#Ruby中的Mixins
#Ruby不支持多重继承 采用Mixin技术代替
#将模块include到类定义中模块中的方法就mix进类中

module A
	def a1
		puts "A module a1 method"
	end
	def a2
		puts "A module a2 method"
	end
end

module B
	def b1
		puts "B module b1 method"
	end
	def b2
		puts "B module b2 method"
	end
end

class Sample
	include A
	include B
	def s1
		puts "Sample class s1 method"
	end
end
sample = Sample.new
sample.a1
sample.a2
sample.b1
sample.b2
sample.s1

#类Sample继承了A B 两个模块，使用了mixin技术实现了多重继承的效果

  