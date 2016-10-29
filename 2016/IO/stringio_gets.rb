require "stringio"

io = StringIO.new("A\nB\nC\n")
p io.gets
p io.gets
p io.gets

i = StringIO.new("asdsad\n111254")
p i.gets
p i.gets
