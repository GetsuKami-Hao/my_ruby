class A

	@a = 1   # don't use
	@@b = 2

	def initialize
		@c = 3
		@@d = 4
	end

	class << self
		@e = 5 	# don't use
		@@f = 6 # don't use
	end

end


p A.instance_variables
p A.class_variables

p A.new.instance_variables
# p A.new.class_variables  #no method.

p A.singleton_class.instance_variables
p A.singleton_class.class_variables  # singleton class no class variables.