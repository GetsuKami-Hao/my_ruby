def factorial(n)
	if n<1
		raise "argument must be > 0 "
	elsif n == 1
		1
	else
		n*factorial(n-1)
	end
end

a = factorial(5)
#factorial(-1) #抛出错误

print  a,"\n"

