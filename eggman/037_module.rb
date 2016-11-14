class User

	attr_accessor :name, :age

	def initialize name,age
		@name, @age = name , age
	end

	def panels
		@panels ||= ['Profile','Products']
	end

end

module Management
	def company_notifies
		Time.now.to_s + " fix machine."
	end

	def company_info
		"The company was founded in 2015/03/11"
	end

end

class 	Admin < User
	include Management # 'extend' keyword statement a instance method.

	def panels
		super
		@panels.concat(['Manage User', 'System Setup'])
	end

end

class Staff < User
	extend Management # 'extend' keyword statement a class method.
	def panels
		super
		@panels << ['Task']
	end
end

user = Admin.new("kakarot",32)
p user.panels
p user.company_notifies

staff = Staff.new("newton",33)
# p staff.company_info  #undefined method. 'extend' keyword statement a class method. 
p Staff.company_info