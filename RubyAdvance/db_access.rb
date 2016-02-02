#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
require_relative "../RubyBasic/fileRead"

fileRead = FileRead.new(__FILE__)
if ARGV.length == 0
elsif ARGV[0] == 'true'|| ARGV[0]=='TRUE'||ARGV[0]=='True'
	fileRead.filtprint
elsif ARGV[0] == 'false'|| ARGV[0]=='FALSE'||ARGV[0]=='False'
	fileRead.nofiltprint
else
end

#Ruby数据库访问——DBI
#DBI：Database independent interface
#Ruby代码-----DBI（抽象层）-----底层数据库
#定义了方法，变量和规范，提供了独立于数据库的一致的数据库接口--->可简单地实现数据库切换


#DBI独立于任何后台可用的数据库
#Ruby DBI一般的架构使用两个层:
#DBI层----独立于数据库
#DBD层（数据库驱动层）---依赖于数据库


#安装DBI
#sudo gem install dbi
#sudo gem install mysql
#sudo gem install dbd-mysql
