if(false)
	BEGIN{
		puts "if";
		a = 4;
	}
else
	BEGIN{
		puts "else";
	}
end

10.times{BEGIN{puts "loop"}}

#This code have error.
#BEGIN is permitted only at toplevel
