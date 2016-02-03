#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

class  MyClass
    def my_method
       @v=1
     end
end

obj = MyClass.new
puts obj.class
obj.my_method
obj.instance_variables

puts obj.methods.grep(/my/)

puts "HELLO".class
puts String.class
puts "Class类的实例方法:"
puts Class.instance_methods(false)

puts Array.superclass
puts Object.superclass
puts BasicObject.superclass.class.name
puts Class.superclass
puts Class.superclass.superclass

class Foo
    def initialize
    	puts "initialize"
    end
end
foo = Foo.new
myFoo = Foo
foo2= myFoo.new

MyConstant = "root level"
module MyModule
	MyConstant = "outer"
	class MyFoo
		MyConstant = "inner"
		module InnerModule
			puts Module.nesting
		end
	end
end

puts MyModule::MyConstant
puts MyModule::MyFoo::MyConstant
puts ::MyConstant

# puts 'Module:'
# puts Module.constants
# puts 'Instance:'
# puts MyModule.constants
puts Module.nesting


puts "----------"
puts Object.class
puts Module.class.superclass
puts Module.superclass
puts Module.class
puts Class.class
