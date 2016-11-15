module Human

end

module Management

end

class User
	include Human				#Insert the module into the class behind.
	prepend Management  #Insert the module into the class front. 
end


p User.ancestors