def f1 
	yield if block_given?
end

def f2(&block)
	block.call if block_given?
	puts block.class # => 'Proc' , block is a instance of 'Proc' 
	puts block.inspect  # => #<Proc:...>  scope.
end

def f3(block)
	block.call
end

def output_n (n)
	p n
end

#without block_given?
#f1   #no block given (yield) => error
#f2   #undefine method 'call' for nil => error.

f1 {puts "f1"}
f2 {puts "f2"}
f3(proc{puts "1.f3"})
f3(Proc.new{ puts "2.f3" })
f3(lambda{ puts "3.f3" })
f3(-> {puts "4.f3"})

output_n(3) { puts "kakarot" }  #all mehotd can receive block.


puts ["1", "2", "3"].map(&:to_i)
