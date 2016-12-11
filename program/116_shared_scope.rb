def my_method
	shared = 0
	Kernel.send :define_method, :counter do 
		shared
	end

	Kernel.send :define_method, :inc do |x|
		shared += x
	end

end

my_method

p counter
p inc(3)
p counter