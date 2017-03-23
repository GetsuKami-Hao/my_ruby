def hello
	puts "i love oo"
end

send(:hello)
# public_send(:hello) #private method 'hello'.

# prefer public_send() over send() 
# so as not to circumvent private/protected visibility.