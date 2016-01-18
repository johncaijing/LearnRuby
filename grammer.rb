#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require './fileRead'

fileRead = FileRead.new()
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end
		
#Here Document
print <<EOF
   创建here Document .
   多行字符串
EOF

END{
	puts 'this is in end'
}

puts 'Main program'

BEGIN{
	puts 'this is in begin'
}

# 单行注释

# 多行注释
# 多行注释
# 多行注释

=begin
多行注释
多行注释
多行注释
=end