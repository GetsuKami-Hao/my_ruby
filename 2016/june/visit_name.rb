class HelloWorld

	def name
		return @name

	end

	def name=(valu)
		@name = valu
	end
	
	attr_accessor:tmp
	
	
end

bob = HelloWorld.new()

bob.name = "Bob"

bob.tmp = "没时间解释了，快上车！"



p bob.name
p bob.tmp
