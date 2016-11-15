module Management
	def self.included base
		puts "Management is being included into #{base}"
		base.include InstanceMethods
		base.prepend ClassMethods
	end

	module InstanceMethods

	end

	module ClassMethods

	end
end

class User
	include Management
end