#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

class FileRead
	def initialize(filePath)
		@filePath = filePath
	end

	def read
		file = File.open(@filePath, "r")
		contents = file.read
		file.close
		return contents
	end   
  
	def filter(str)
		filt_numbersign_str = str.gsub(/\s*[#].*[\n]/,"") 
		filt_equalsign_str = filt_numbersign_str.gsub(/^[=]begin\s((.+)\s)*[=]end$/,"")
		return filt_equalsign_str
	end
    
    # 过滤掉注释再打印出来
	def filtprint
		str = read
		new_str = filter(str)
		puts new_str		
	end
	
	# 不过滤就打印出来
	def nofiltprint
		puts read
	end
end

# __FILE__获取当前执行的Ruby文件名
#fileread = FileRead.new()
#fileread.filtprint



