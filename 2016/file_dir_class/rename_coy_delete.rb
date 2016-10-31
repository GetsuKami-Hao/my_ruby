require 'fileutils'

def copy (from,to)
  open(from){|input|
	  open(to,"w"){ |output|
				output.write(input.read)
		}			
	}
end
begin
	File.rename("log.txt","rename_log.txt")
rescue
	puts "文件不存在"
end
#File.rename("log.txt","tmp/log.txt")
#程序可以将文件移动到其他目录,目录不存在将发生错误


copy("rename_log.txt" , "log.txt")

begin
	FileUtils.cp("data.txt","backup/data.txt")
	FileUtils.mv("data.txt","data1.txt")  #可做到File.rename 方法所办不到的跨文件系统或磁盘驱动器的移动操作
rescue
	puts "文件不存在"
end

File.delete("log.txt")
