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

#Ruby 哈希Hash
#类似"key"=>"value"的键值对集合
#类似于一个数组，但索引不局限于使用数字
#Hash的索引（键）几乎可以是任何对象
#hash的元素没有特定的顺序

#创建Hash
#new方法创建
months = Hash.new
puts "#{months[0].class.name}"#nil

#创建带有默认值的Hash
months = Hash.new("month")
puts "#{months[0]}"

months = Hash.new("month")
puts "#{months[1]}"

H = Hash["a"=>100,"b"=>200]
puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H['c'].class.name}"#nil

#Hash 内置方法
#实例化Hash对象 来调用Hash方法
#创建Hash对象的方法：
# Hash[[key =>|, value]* ] or

# Hash.new [or] Hash.new(obj) [or]

# Hash.new { |hash, key| block }

countries = Hash["China"=>"Beijing","America"=>"Washington","England"=>"London"]
countryName = countries.keys
print countryName