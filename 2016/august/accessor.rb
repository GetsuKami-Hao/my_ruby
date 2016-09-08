
class BOX  #define a class
	def initialize(w,h)
		@width,@height = w,h;
	end

	def printWidth #define accessor methods
		@width
	end

	def printHeight
		@height;
	end

end

#create an boject
box = BOX.new(10,20);

x = box.printWidth();
y = box.printHeight();

puts "Width of the box is : #{x}"
puts "Heigth of the box is : #{y}"



