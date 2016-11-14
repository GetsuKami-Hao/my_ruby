class User
	attr_accessor :name, :age

	def initialize name, age
		@name, @age = name, age
	end

	def panels
		@panels ||= ['Profile','Products']
	end

	def output_info(info = "User class")
		puts "use by #{info}"
	end
end

class Admin < User

	def panels
		super  # use superclass method, 'super' can transfer parameter.
		@panels.concat(['Manage Users','System Setup'])
		output_info("Admin class")  # define in User class .
	end


end

p Admin.superclass

user = User.new("kakarot", 34)
p user.panels

admin = Admin.new("newton" , 44)
p admin.panels
