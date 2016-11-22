class User
	attr_accessor :name , :age
	def initialize name, age
		@name, @age = name , age
	end

	def to_s
		"name: #{@name}, age: #{@age}"
	end
end


user1 = User.new "kakarot" , 23

user2 = user1.dup

puts user2
