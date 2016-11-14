class User
	#attr_accessor :name , :age

	def self.setup_accessor var
		define_method var  do
			instance_variable_get "@#{var}"
		end

		define_method "#{var}=" do |value|
			instance_variable_set "@#{var}" , value
		end

	end

	setup_accessor :name
	setup_accessor :age

	def initialize name ,age
		@name = name
		@age = age
	end

end

user = User.new("kakarot",34)
user.name = "newton"
puts user.name