module A

	def self.included base  # when run include, auto run included.
		p 'include..'

		base.class_eval do   # base is A scope.
			set_logger :hi
		end
	end

end

class B 

	def self.set_logger method_name

		puts "insert method => #{method_name}"
	end



	include A
end
