class MyClass
	@my_var = 1

	def self.read
		@my_var
	end

	def self.write
		@my_var = 0
	end

	def write
		@my_var = 3
	end

	def read
		@my_var
	end
end

a = MyClass.new  #类和对象分别拥有一组自己的实例变量
p a.read #=>nil
p MyClass.read #=> 1
a.write
p a.read # => 3
MyClass.write
p MyClass.read # => 0
p a.read #=> 3