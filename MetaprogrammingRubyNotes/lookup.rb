#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

class MyClass
	def my_method
		'my_method'
	end
end

class MySubClass < MyClass
end

obj = MySubClass.new
puts obj.my_method

puts "MySubClass的祖先链:"
puts MySubClass.ancestors

module MyModule
	def method_in_mymodule
		puts "method in MyModule"
	end
end

#使用include方法包含模块
class TestClass
	include MyModule
end
class D <TestClass
end

puts "D的祖先链(include)："
puts D.ancestors

#使用prepend方法包含模块(Ruby2.0开始)
class TestPrependClass
	prepend MyModule
end
class E < TestPrependClass
end

puts "E的祖先链(prepend)："
puts E.ancestors

puts "Object类的祖先链"
puts Object.ancestors

puts "Kernel中以pr开头的私有实例方法"
puts Kernel.private_instance_methods.grep(/^pr/)

