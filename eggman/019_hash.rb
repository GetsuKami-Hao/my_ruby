a = { name: "kakarot" , age: 18 }

a.each{ |key,value|
	puts "#{key},#{value}"
}

p a.keys
p a.values
puts a.has_key? :name

a.delete :name
p a.keys # => [:age]
a.delete_if { } # delete block return true element.
