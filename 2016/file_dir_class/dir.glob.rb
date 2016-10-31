begin
	Dir.glob("/home/yirolhao/*")  #获取目录下所有文件名
	puts Dir.glob("/home/yirolhao/.*") #获取目录下的隐藏文件

	Dir.glob("*.html\0*.htm") #获取当前目录下扩展名是其的文件，　当指定样式不为一的时候，用 '\0'　分割
	Dir.glob("*/*.html\0*/*.hml") #获取子目录下
	Dir.glob("foo.?") #获取文件文件名为foo的文件，扩展名只有一个字
	Dir.glob("foo.[cho]") #获取文件名为foo,扩展名为c,h,o的文件
	Dir.glob("**/*") #递归获取当前目录下包括子目录的所有文件
	Dir.glob("foo/**/*.html") #递归获取foo目录下包括子目录所有扩展名为.html的文件
rescue
	puts "路径错误"
end

