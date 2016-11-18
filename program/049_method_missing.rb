class People

	def say_hi(a='')
		'hi, world!'
	end
end

class User < People

	def method_missing(name,*args)
		"method name is #{name} , parameters: #{args}"
	end

end

u = User.new
puts u.say_hi
puts u.say_hello('a',2)

