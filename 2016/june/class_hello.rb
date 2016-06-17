class HelloWorld
	def initialize(name = "Ruby") #This is construction method.
		@name = name
	end

	def hello
		print "Hello,world. I am ",@name,".\n"
	end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")

ruby = HelloWorld.new

bob.hello

ruby.hello
