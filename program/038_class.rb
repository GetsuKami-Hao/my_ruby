class User
	attr_accessor :name
	@name = "Kakarot"

	def self.puts_name
		@name = 'newton'
		#puts @name  # class method can use instance variables.
	end

	def self.get_name
		@name   # User class have its own @name variables.  
						# and can't be modified by object.
	end

	def get_name
		@name
	end
end

user = User.new
user.name = "user_1"

#p User.name  # why output 'User' ?
#p user.name
User.puts_name
p User.get_name

p user.get_name

p String.ancestors