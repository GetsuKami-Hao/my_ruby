io = open "log.txt" , "r"

p io.gets
io.rewind
p io.gets

io.pos = 0

io.seek(2,IO::SEEK_CUR)
p io.gets

io.close
p io.closed?


