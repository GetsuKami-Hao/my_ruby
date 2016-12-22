class MyClass

	attr_accessor :name

	private
		def get_hello
			"hello #{@name}"
		end

end

my = MyClass.new
my.name = "kakarot"
#puts my.get_hello  #private method `get_hello' called for
puts my.send(:get_hello)
