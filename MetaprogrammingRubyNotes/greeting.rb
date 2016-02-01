#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
class Greeting
	def initialize(text)
		@text = text
	end

	def welcome
		@text
	end
end

object = Greeting.new("Hi")

#通过方法调用得知（询问）object的类
puts object.class

#询问类的实例方法 false表示不要继承来的方法
puts object.class.instance_methods(false)

#询问实例变量
puts object.instance_variables

