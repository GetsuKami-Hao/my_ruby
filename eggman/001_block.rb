(1..5).each{ |a|
	#p a
}

x = 10
[1,2,3].each do |x|
	puts "#{x}"
end

puts "x = #{x}"


y = 10 # y was modified.
[1,2,3].each do |x|
	y = x
end

puts "y = #{y}"


