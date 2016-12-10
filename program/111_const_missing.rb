class MyClass
	Name = "kakarot"
	def self.const_missing(const_name)
		puts "error,no constant '#{const_name}'"
	end
end

p MyClass::Name
p MyClass::Age

