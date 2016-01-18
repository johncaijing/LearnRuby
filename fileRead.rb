#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

class FileRead
	def initialize()
		@filePath = __FILE__
	end

	def read
		file = File.open(@filePath, "r")
		contents = file.read
		file.close
		return contents
	end
    
    # 过滤掉注释再打印出来
	def filter(str)
		new_str = str.gsub(/[\s][#].*[\n]/,"") 
		return new_str
	end

	# 不过滤就打印出来
	def filtprint
		str = read
		new_str = filter(str)
		puts new_str		
	end

	def nofiltprint
		puts read
	end
end

# __FILE__获取当前执行的Ruby文件名
#fileread = FileRead.new()
#fileread.filtprint



