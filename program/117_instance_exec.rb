class A
	def initialize
		@x = 1
	end
end

class B
	def twisted_method
		@y = 2
		A.new.instance_eval { puts "@x: #{@x},  @y: #{@y}" } # => @x: 1,  @y:
	end
end

class C
	attr_accessor :y

	def twisted_method
		@y = 2
		A.new.instance_exec(@y) { |y| y = 4 } #将y的值传递进去，y并不能被修改
	end
end

B.new.twisted_method
a =  C.new
a.twisted_method
p a.y