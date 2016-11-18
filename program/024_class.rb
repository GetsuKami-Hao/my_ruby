class User

	attr_reader :name, :age  # getter method.
	attr_writer :name, :age  # setter method.
	def initialize name,age
		@name = name
		@age = age
	end
end

user = User.new("kakarot","34")
p user.name
p user.age

user.name = "newton"
user.age = 45
p user.name
p user.age