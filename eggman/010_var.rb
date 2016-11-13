# string 
a = "world."
b = %Q{
	hello #{a}
}
puts b


a = <<-HERE
hello #{b}
HERE
puts a