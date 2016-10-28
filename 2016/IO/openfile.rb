
#io = open(filename,打开方式)
#io = File.open(filename,打开方式)

open("log.txt"){|io|
	while line = io.gets
					puts line
	end
}

io = open("log.txt")
p io.closed?  #使用这个来看文件是否关闭
io.close
p io.closed?

io = File.read("log.txt");
puts io
p io   #这里的换行会以　\n　的形式输出
