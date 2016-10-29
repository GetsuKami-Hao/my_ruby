
io = open("log.txt")

p io.read(5)
p io.pos

io.pos = 0
p io.gets
io.close
io.closed?
