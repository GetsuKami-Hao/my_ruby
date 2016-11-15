module Management
	PHONE = '1356789'

	module Track
		def track
			'track from Track module'
		end
	end

	class User
		def say_hello
			'hello world.'
		end
	end
end

puts Management::PHONE

include Management::Track

puts track

puts Management::User.new.say_hello