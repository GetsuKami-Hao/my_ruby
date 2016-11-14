class User
	attr_accessor :name, :age # setter and getter method.
	@@counter = 0

	def initialize name,age
		@name = name
		@age = age
		@@counter += 1
	end

	def say_hi
		puts "i am #{@name}, i am #{@age}"
	end

	def self.get_counter
		@@counter
	end

end

user =User.new("kakarot","34")
user.say_hi

puts "initialize times is #{User.get_counter}"


=begin
define class method
1.
	def self.get_counter
		@@counter
	end

2.
	def User.get_counter
		@@counter
	end

3.
	class << self
		def get_counter
				@@counter
		end
	end
=end



