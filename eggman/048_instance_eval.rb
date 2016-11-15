

a = ""
a.instance_eval do #singleon_method
	def hello
		'hello world.'
	end
end

puts a.hello

b = ""
#puts b.hello #error.

class User

end

c = User.new
c.instance_eval do
	def hello_c
		'hello C'
	end
end

puts c.hello_c
