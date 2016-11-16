# defin singleton method.
# 1
class A
	def self.hi
		p 'hi'
	end
end

# 2
class A
	class << self
		def hello
			p 'hello'
		end
	end
end

#3
def A.hey
	p 'hey'
end

# 4
(class << A ; self ; end).class_eval  do
	def wow
		p 'wow'
	end
end

# 5 
A.singleton_class.class_eval do
	def ou
		p 'ou'
	end
end

#6 
A.define_singleton_method(:alielie) do |*arg|
	p arg
end


puts  "(class << A ; self ; end) = #{(class << A ; self ; end)} "
puts "A.singleton_class = #{A.singleton_class}"


A.wow
p A.singleton_methods

