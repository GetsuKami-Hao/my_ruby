class User

end

User.class_eval do 		# define instance method.
	def hello
		'hello world!'
	end
end

User.instance_eval do		#define class method.
	def hi
		'hi world'
	end
end

p User.class   # User class is 'Class'  a instance. so can call instance_eval. 
puts User.hi
puts User.new.hello