module StringExtensions
	refine String do 
		def mynameis
			'kakarot'
		end
	end
end

module ArrayExtensions
	refine Array do
		def loveuu
			'I love taki'
		end
	end
end

# p "".mynameis # undefined method `mynameis' for "":String
using StringExtensions

module ArrayStuff
	using ArrayExtensions
  p [].loveuu
end
