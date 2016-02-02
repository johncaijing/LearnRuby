#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require_relative "../RubyBasic/fileRead"
require 'nokogiri' 
require 'open-uri' 
require 'rubygems'
require 'json'
require 'pp'
#pp->Pretty-printed output->http://ruby-doc.org/stdlib-2.1.0/libdoc/pp/rdoc/PP.html

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end

#安装Ruby Json模块
#sudo gem install json

json = File.read('input.json')
obj = JSON.parse(json)

pp obj
