my_var = "Success"

MyClass = Class.new do

	puts "访问 my_var, #{my_var} in class." 

	define_method :my_method do
		puts "访问 my_var, #{my_var} in method."
	end

end
puts '....'
MyClass.new.my_method