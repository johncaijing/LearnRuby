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
# Ruby是一种面向对象的编程语言 
# 数据封装 数据抽象 多态 继承

# 定义类，关键字class 类名的首字母大写
# end终止一个类
class Car
end

# Ruby类中的变量
# 四种类型
# 局部变量 方法中定义 以小写字母或_开始
# 实例变量 可跨任何特定的实例或对象的方法中使用 在变量名前加@符号
# 类变量 可跨不同的对象使用 属于类 是类的一个属性 在变量名前加@@符号
# 全局变量 可跨类使用 在变量名前加$符号

class Person
	@@sum_of_person = 0#类变量
	def initialize(name) 
		@@sum_of_person=@@sum_of_person+1
		@name=name #实例变量
	end
	def print_name #成员方法
		puts "name:#@name"
	end
end


# 使用new方法来创建对象，new方法在Ruby库中预定义，属于类方法
person1 = Person.new("John")
person2 = Person.new("Kobe")

person1.print_name
person2.print_name

puts Person.class_variable_get:@@sum_of_person