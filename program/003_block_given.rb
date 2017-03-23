# block_given?  

def hello
  if block_given?
    yield
  else
    puts "no block."
  end
end

hello

hello { puts "I'm a block." }