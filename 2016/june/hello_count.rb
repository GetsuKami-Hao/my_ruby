class HelloCount
	@@count = 0 #This is class object

	def HelloCount.count
		@@count
	end

	def initialize(name = "Ruby")
		@name = name
	end

	def hello
		@@count += 1
		print "Hello,World.I am ",@name,".\n"
	end
end

ruby = HelloCount.new();
kakarot = HelloCount.new("kakarot")

print "start...\n"
p HelloCount.count

print ruby.hello
print kakarot.hello

print "end...\n"

p HelloCount.count
