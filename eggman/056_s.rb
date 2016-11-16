a = ""
 
def a.counter num
	@num += 1
end

def a.to_s
	@num
end
a.counter(10)

p a