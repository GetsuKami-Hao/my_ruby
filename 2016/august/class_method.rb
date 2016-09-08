class Box
	
	@@count = 0;

	def initialize(w,h)
		@width,@heigth = w,h;
		@@count += 1
	end

	def self.printCount()
		puts "Box count is : #@@count"
	end
end

box1 = Box.new(10,20);
box2 = Box.new(32,23);

Box.printCount();
