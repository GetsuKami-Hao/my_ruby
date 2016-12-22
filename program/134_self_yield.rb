class A
	# p self
	def initialize
		yield self if block_given?
	end

	def hello
		yield 1 if block_given?
	end

	def self.hello
		yield self if block_given?
		"s"
	end
end

a = A.new do |var|
	p var
end

a.hello do |var|
	p var
end

p A.hello { |var| p var }

