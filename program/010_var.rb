# string 
a = "world."
b = %Q[hello #{a}]
puts b

puts a
a = <<-HERE
hello #{b}
HERE
puts a