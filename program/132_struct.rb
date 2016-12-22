class Number < Struct.new(:value)
end

class Add < Struct.new(:left, :right)
end

class Mul < Struct.new(:left,:right)
end

class Number
	def to_s
		value.to_s
	end

	def inspect
		"《#{self}》"
	end
end

class Add
	def to_s
		"#{left} + #{right}"
	end

	def inspect
		"《#{self}》"
	end
end

class Mul 
	 def to_s
	 	"#{left} * #{right}"
	 end

  def inspect
		"《#{self}》"
	end
end

p Add.new(Mul.new(Number.new(1),Number.new(2)), Mul.new(Number.new(3), Number.new(4)))

