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