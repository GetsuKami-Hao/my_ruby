class AccTest
	def pub
		puts "pub is a public method.\n"
	end
	public:pub #set the pub method to public
	
	def priv
		puts "priv is a private method.\n"
	end

	private:priv #set the priv method to private
end

acc = AccTest.new

acc.pub

#acc.priv  #private method , error
