require '/home/yirolhao/ruby/my_ruby/2016/october/book'

class BookList
	
	def initialize()
		@booklist = Array.new()
	end


	def add(book)
		
		@booklist.push(book)
	end

	def length()
		@booklist.length()
	end

	def []=(n,book)
		@booklist[n] = book
	end

	def [](n)
		@booklist[n]
	end

	def delete(book)
		@booklist.delete(book)
	end
end


