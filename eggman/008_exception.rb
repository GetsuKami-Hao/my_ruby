# exception catch	

def hello
	raise
end

begin
	hello
rescue RuntimeError
	puts "run time error."
end