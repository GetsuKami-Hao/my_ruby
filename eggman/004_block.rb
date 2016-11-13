def hello name
	puts "block start"
	word = "hello " + name
	yield(word)
	puts "block end"
end

hello("world") {|x|  puts "I am block, i get #{x}" }