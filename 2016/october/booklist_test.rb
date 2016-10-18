require File.dirname(__FILE__)+'/book'
require '/home/yirolhao/ruby/my_ruby/2016/october/booklist'

booklist = BookList.new()

b1 = Book.new("ipod 玩拆解","三普一则")
b2 = Book.new("How Objects Work","平泽章");

booklist.add(b1)
booklist.add(b2)

printf booklist[0].title , "\n"
printf booklist[1].title , "\n"
