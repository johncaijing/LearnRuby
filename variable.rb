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
#Ruby支持5中类型的变量
#1.变量 小写字母,下划线开头
#2.全局变量 $开头
#3.实例变量 @开头
#4.类变量 @@开头 类变量被共享在整个继承链中
#5.常量 大写字母开头

#Ruby 全局变量
#未初始化的全局变量的值为nil，给全局变量赋值会改变全局状态，故不建议使用全局变量

$global_variable=100
class Clazz1
	def print_global
		puts "全局变量在Clazz1中输出为#$global_variable"
	end
end
class Clazz2
	def print_global
		puts "全局变量在Clazz2中输出为#$global_variable"
	end
end

clazz1Obj = Clazz1.new
clazz1Obj.print_global
#修改全局变量的值
$global_variable = 5
clazz2Obj = Clazz2.new
clazz2Obj.print_global

#Ruby实例变量 @@sum_of_students
#未初始化的实例变量的值为nil 
#Ruby类变量 @id @name
#Ruby局部变量 id name
#Ruby常量 不能定义在方法内 SCHOOL 
class Student
	@@sum_of_students=0
	SCHOOL = "USLA"
	def initialize(name,id)
		@id= id
		@name =name
		@@sum_of_students=@@sum_of_students +1
	end
	def print_student
		puts "This student's name is #{@name},id is #{@id}"
	end
	def get_sum_of_students
		puts "The numbers of all of the students is #@@sum_of_students"
	end
	def show_school
		puts "#{@name}'s school is #{SCHOOL}"
	end
end

student1 = Student.new("John",1)
student2 = Student.new("Kobe",2)
student2.show_school
student1.print_student
student2.get_sum_of_students

#Ruby伪变量
#外观像局部变量 但行为却像常量 不能赋值
# self 当前方法的接收器对象
# true 代表true值
# false 代表false值
# nil 代表undefined值
#__FILE__ 当前源文件的名称
# __LINE__当前行在源文件中的编号





