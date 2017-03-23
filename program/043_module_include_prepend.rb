# module Human
# end
Human = Module.new

# module Management
# end
Management = Module.new

class User
	include Human				#Insert the module into the class behind.
	prepend Management  #Insert the module into the class front. 
end


p User.ancestors