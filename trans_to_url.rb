#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$URL_PREFIX = "https://github.com/JohnTsaiAndroid/LearnRuby/tree/master/"

current_dir = Dir.pwd
dir_array=Array.new
Dir.foreach(current_dir) do |entry|
  if File::directory?(entry)&&(entry.to_s !~ /^[\.]/)
    dir_array.push(entry)
  end
end

write_str=""

dir_array.each do |d|
  puts d
  dir = Dir::entries(d.to_s)
  puts dir
  dir.each do |f|
    if(f.to_s !~ /^[.]/&&f.to_s=~/[(.rb|.md)]$/)
       write_str+=("[#{f}](#{$URL_PREFIX}#{d}/#{f})\n")
    end
  end
end

puts write_str

file = File.open("./url.txt","w+")
if file
  if file && write_str.length>0
      file.syswrite(write_str)
      file.close
  end
end
puts "finish"


