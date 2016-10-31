p Dir.pwd  #输出当前路径，同linux pwd命令
#Dir.chdir "/etc"
#p Dir.pwd

Dir.chdir "../.."  # => 移动到两层之前的目录
#p Dir.pwd
begin
	io = open("2016/file_dir_class/rename_log.txt")
rescue
	puts "文件不存在"
end

unless io.closed?
	io.close
end


###打开目录，读取内容，关闭目录

dir = Dir.open("/usr/bin")

dir.each{|name|
	while name = dir.read
		p name
	end
}

dir.close

Dir.open("2016"){ |dir|
	dir.each{|name|
		p name
	}
}
