require './book'

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

	def each
		@booklist.each{|book|
			yield(book)
		}
	end

	def each_title
		@booklist.each{|book|
			yield(book.title)
		}
	end

	def each_title_author
		@booklist.each{|book|
			yield(book.title,book.author)
		}
	end

	def find_by_author(author)
		if block_given? 
			@booklist.each{|book|
				if author =~ book.author
						yield(book)
				end
		}
		else
			result = []
			@booklist.each{|book|
				if author =~book.author
								result << book
				end
			}
			return result
		end
	end
end


