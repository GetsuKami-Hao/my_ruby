class Box

	def initialize(w,h)
		@width,@height = w,h;
	end

	def getWidth
		@width
	end

	def getHeight
		@height
	end

	def setWidth=(value)     # 方法名与等号之间不能有空格
		@width= value
	end

	def setHeight=(value)
		@height = value
	end
end

box = Box.new(10,20);

box.setWidth = 30;

x = box.getWidth()
y = box.getHeight();

puts "Width of the box is : #{x}";
puts "Height of the box is : #{y}";
