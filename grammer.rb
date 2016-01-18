#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

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