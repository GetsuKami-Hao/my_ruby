class AccTest
	public	#The argument is not sepcified. Here all public

	def pub_A
		puts "pub_A is public method.\n"
	end

	def pub_B
		puts "pub_B is public method.\n"
	end

	private

	def priv_A
		puts "priv_A is private method.\n"
	end
end

tmp = AccTest.new

tmp.pub_A

tmp.pub_B

#tmp.priv_A
