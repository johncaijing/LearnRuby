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

#Ruby是纯面向对象的语言
#Ruby中每个值都是一个对象，即使是最原始的对象：字符串，数字，true，false，类。

class Foo
end

def printClassName(arg)
	puts arg.class.name
end

foo = Foo.new
bool = true
num = 5

printClassName foo.class
printClassName bool
printClassName num

#类用于指定对象的形式 结合了数据表示和方法
#类中的数据和方法：类的成员

#Ruby类的定义
# class ClassName
# 	code
# end

#按惯例：类名以大写字母开头，多个单词则每个单词首字母大写
class MathBook
	@@count = 0
	def initialize(price,grade)
		@price,@grade = price,grade
		@@count+=1
	end

    #访问器方法
	def getPrice
		@price
	end
	def getGrade
		@grade
	end

	#设置器方法
	def setPrice(price)
		@price=price
	end
	def setGrade(grade)
		@grade=grade
	end
    #实例方法
	def getInfo
		"This MathBook is #{@price} dollars and is used to Grade#{@grade}"
	end
	#类方法
	def MathBook.printCount
		puts "There are #{@@count} MathBooks"
	end
	#to_s方法
	#定义的任何类都有一个to_s实例方法返回对象的字符串表现形式
	def to_s
		"price:#{@price},grade:#{@grade}"
	end
    #将方法访问设置为private
	# private:getPrice,:getGrade
	#将方法访问设置为protected
	# protected:getInfo
end
#initialize方法
#Ruby类方法，与其他语言的constructor的原理类似

#创建Ruby对象
# mathbook1 = MathBook.new
mathbook2= MathBook.new(10,4)

puts mathbook2.getPrice
puts mathbook2.getGrade

mathbook2.setGrade(5)
mathbook2.setPrice(15)

puts mathbook2.getPrice
puts mathbook2.getGrade

#实例变量是类属性 在类的内部使用@运算符访问这些属性
#在类的外部 使用访问器的公共方法访问

#实例方法
puts mathbook2.getInfo

#类方法和类变量
#类变量：在类的所有实例中共享的变量
#@@两个@@符号作为前缀，必须在类定义的时候初始化

#类方法使用def self.methodName()这种形式定义
#用className.methodName这种形式调用

mathbook3=MathBook.new(11,3)
MathBook.printCount

puts mathbook3.to_s
#自动调用to_s方法
puts mathbook3

#访问控制
# Public 方法： Public 方法可被任意对象调用。默认情况下，方法都是 public 的，除了 initialize 方法总是 private 的。
# Private 方法： Private 方法不能从类外部访问或查看。只有类方法可以访问私有成员。
# Protected 方法： Protected 方法只能被类及其子类的对象调用。访问也只能在类及其子类内部进行。

#类的继承
#Ruby不支持多继承
#Ruby支持mixin

class Box
	puts self
	COMPANY = "Google.Inc"
	def initialize(w,h)
		puts self
		@width = w
		@heignt = h
	end
	def getArea
		@width*@heignt
	end
	def printInfo
		puts self
		puts "This box's width:#{@width} and heignt#{@heignt}"
	end
	def width
		@width
	end
	def heignt
		@heignt
	end
	#运算符重载
	def +(other)
		Box.new(@width+other.width,@heignt+other.heignt)
	end
	def setWidth(width)
		@width=width
	end
	def setHeight(heignt)
		@heignt=heignt
	end
	def printCompany
		puts "The box's company is #{COMPANY}"
	end
end

#定义子类
class BigBox < Box
	def initialize(w,h,c)
		super(w,h)
		@color = c
	end
	#添加新的实例方法
	def printArea
		@area = getArea
		puts "Big box's area is#{@area}"
	end
	#方法重载
	def printInfo
		puts "This BigBox's width:#{@width} heignt:#{@heignt} and color is #{@color} "
	end
end

box = BigBox.new(20,30,"Blue")
puts box.getArea
box.printArea
box.printInfo

box1 = Box.new(4,5)
box1.printInfo

box2=Box.new(5,4)
box2.printInfo

#运算符重载
box3=box1+box2
box3.printInfo

#冻结对象
#防止对象被改变
#freeze方法可实现这个功能===》有效地讲一个对象变成一个常量
#任何对象都可以通过调用Object.freeze进行冻结，被冻结的对象不能被修改
#使用Object.frozen?方法检查一个对象是否被冻结

box3.freeze
# box3.setWidth 100
# `setWidth': can't modify frozen Box (RuntimeError)
if box3.frozen?
	puts "forzen"
else
	puts "normal"
end

#类常量
#大写
#类内部访问：constant
#类外部访问：classname::constant

box3.printCompany
puts Box::COMPANY

#使用allocate创建对象
#不使用new方法（即initialize方法）创建对象
#使用allocate方法创建未初始化的对象
box4=Box.allocate
box4.setWidth 4
box4.setHeight 4
box4.printInfo

#类信息
#根据代码所在的位置不同，上下文不同，self有着不同的含义
#http://rubylearning.com/satishtalim/ruby_self.html
puts self

# http://stackoverflow.com/questions/6669527/use-of-ruby-self-keyword

class Fooo
	def self.test
		puts "#{self.to_s} class method #{self.class.name}"
	end
	def test
		puts "#{self.to_s} instance method #{self.class.name}"
	end
end

Fooo.test

fooo = Fooo.new
fooo.test

class Bar
  def self.foo
    "foo!"
  end

  def baz
    "baz!"
  end

  def self.success
    foo #looks for variable foo, doesn't find one, looks for class method foo, finds it, returns "foo!"
  end

  def self.fail
    baz #looks for variable baz, doesn't find one, looks for class method baz, doesn't find one, raises exception
  end

  def instance_success
    baz #looks for variable baz, doesn't find one, looks for instance method baz, finds it, returns "baz!"
  end

  def instance_fail
    foo #looks for variable foo, doesn't find one, looks for instance method foo, doesn't find one, raises exception
  end

  def local_variable
    baz = "is my favorite method"
    baz #looks for variable baz, finds it, returns "is my favorite method"
  end

  def disambiguate
    baz = " is my favorite method"
    self.baz + baz #looks for instance method baz, finds it, looks for local variable baz, finds it, returns "baz! is my favorite method"
  end
end


