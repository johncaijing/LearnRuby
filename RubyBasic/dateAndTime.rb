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

#Time类用来表示日期和时间 基于操作系统提供的日期和时间之上

#获取当前的时间
#TIme.new
time = Time.new
puts "current time is #{time.inspect}"

#Time.now
time = Time.now
puts "current time is #{time.inspect}"

#获取Date TIme组件
# Time 的组件
puts time.year    # => 日期的年份
puts time.month   # => 日期的月份（1 到 12）
puts time.day     # => 一个月中的第几天（1 到 31）
puts time.wday    # => 一周中的星期几（0 是星期日）
puts time.yday    # => 365：一年中的第几天
puts time.hour    # => 23：24 小时制
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999：微秒
puts time.zone    # => "UTC"：时区名称

# 格式化时间和日期
time = Time.new

puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

#时间算法
$DAY = 24*60*60
now = Time.now
puts now.strftime("%Y-%m-%d %H:%M:%S")
past = now-$DAY
puts past.strftime("%Y-%m-%d %H:%M:%S")
future = now+$DAY
puts future.strftime("%Y-%m-%d %H:%M:%S")

