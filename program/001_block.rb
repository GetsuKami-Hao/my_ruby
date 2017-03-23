(1..5).each{ |a| puts a }

x = 10
(1..3).each{ |x| puts "x = #{x}" } 


puts "x = #{x}"

y = 10
(1..3).each{ |x| y = x }

# y was modified.
puts "y = #{y}"


