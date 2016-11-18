a = Array.new

a.instance_eval <<KAKA  #start and end the same name, and '<<','KAKA' without space. 
	def size
		puts super
		"i love uu"
	end
KAKA

b = Array.new

p a.size
p b.size
