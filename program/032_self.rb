class User

	attr_accessor :name, :age

	def initialize name,age
		@name, @age = name , age
	end

	def to_s
		"name = #{self.name}\nage = #{self.age}"
	end
end

user = User.new("kakarot",32)
puts user  # output unless without to_s method in 'User class'.