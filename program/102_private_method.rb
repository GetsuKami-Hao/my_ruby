class A
	private 
		def private_method
			puts "I love uu"
		end
end

class B < A
	def public_method
		private_method
	end
end

B.new.public_method

p self
p self.class