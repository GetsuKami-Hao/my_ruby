class User
	def panels
		@panels ||= ['Profile' , 'Products']
	end

end

class Admin < User

end

p Admin.ancestors  # show class inheritance relationship.

# admin = Admin.new
# p admin.panels