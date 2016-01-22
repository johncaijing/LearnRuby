#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$URL_PREFIX = "https://github.com/JohnTsaiAndroid/LearnRuby/tree/master/RubyBasic/"

if File::directory?("./RubyBasic")
  dir = Dir::entries("./RubyBasic")
  file = File.new("./url.txt","w+")
  puts dir
  if file
  	str = ""
  	dir.each do |f|
  		if(f=~/^[.]/)
  		else
  	       str+=("*[]()->[#{f}](#{$URL_PREFIX}#{f})\n")
  	   end
    end
    puts str
    file.syswrite(str)
    file.close
   end
end
