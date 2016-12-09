module First
	def myname
		"kakarot"
	end
end

module Second
	def myname
		"newton"
	end
end

class A
	include Second
	prepend First
end

p A.new.myname
p A.ancestors