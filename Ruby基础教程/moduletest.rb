#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

#让Ruby知道必须在当前目录中搜索被引用的文件 
$LOAD_PATH << '.' #或者用require_relative
require 'module'

y = Test.sin(Test::PI/4)
puts y
