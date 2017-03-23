#block as named parameter
def hello(name,&block)
  puts "Hello #{name}, from method."
  block.call(name)
  world(block)
end

def world(block)
  block.call("world")
end

hello('yu'){|x| puts "Hello #{x}, from block."}