#block as named parameter
def hello name,&block
	puts "Hello #{name}, from method."
	block.call(name)

end


hello('yu'){|x| puts "Hello #{x}, from block."}