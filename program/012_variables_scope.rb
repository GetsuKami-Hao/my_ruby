# instance variable and class variable

class People
	attr_reader :name

	@@counter = 0;
	def initialize(name)
		@name = name
		@@counter += 1
	end

	def get_counter
		@@counter
	end

end

user1 = People.new("kakarot")
puts user1.name
puts "id = #{user1.get_counter}"



user2 = People.new("newton")
puts user2.name
puts "id = #{user2.get_counter}"