module M
	class C
		X = 'a constant'
		module M2
			Module.nesting # => [M::C::M2, M::C, M]
		end
	end
end

class A 
	include M
end

class B
	prepend M
end

p  A.ancestors
p  B.ancestors
p M::C.ancestors

# p M::C::X
# p Module.superclass
# p Class.class