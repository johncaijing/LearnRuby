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