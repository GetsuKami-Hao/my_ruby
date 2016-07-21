f = Fiber.new{		           #create a new fiber
	puts "Fiber says hello";
	Fiber.yield;		   #pause fiber,wait for the next call		
	puts "Fiber says goodbye";
}

puts "Caller say hello";
f.resume
puts "Caller say goodbye";
f.resume
