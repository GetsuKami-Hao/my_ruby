require "stringio"

io = StringIO.new

io.puts("A") #StringIO 对象的输出实际上不会输出到任何地方，只会保存在对象中，之后可以使用read方法读取

io.puts("B")
io.puts("C")

io.rewind
p io.read
