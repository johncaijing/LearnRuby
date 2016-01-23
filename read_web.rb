#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require 'nokogiri' 
require 'open-uri' 

$URL="http://www.runoob.com/ruby/ruby-tutorial.html"
$URL_PREFIX = "http://www.runoob.com"

doc = Nokogiri::HTML(open($URL))
# puts doc

update_str=doc.to_s.gsub(/<\/a>[^\n]/,"</a>\n")
puts update_str
array = update_str.scan(/^<a target="_top".*?.html">$/)
puts array

name=array.to_s.scan(/\"Ruby.*?\"/)
name.each do |n|
	n.gsub!(/[\"\\]/,"")
end

url=array.to_s.scan(/"\/ruby.*?"/)
url.each do |u|
	u.gsub!(/[\"\\"]/,"")
	u.insert(0,$URL_PREFIX)
end

puts "array:#{array.length}"
puts "name:#{name.length}"
puts "url:#{url.length}"

str=""
if name.length===url.length
	for i in 0...name.length
		str=str+"* [#{name[i]}](#{url[i]})\n"
	end
end

file = File.new("./ruby_url.txt","w")
if file
	file.syswrite(str)
	file.close
end


