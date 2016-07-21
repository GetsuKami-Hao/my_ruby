a = 4;
if(true)
	END{                          	#This END is executed
		puts "if";		#This code is registered
		puts a;			#This variable is visible,prints "4"
	}				
else
	END{				#This END is not executed
		puts "else";
	}
end

10.times{END {puts "loop"}};		#only executed once.
