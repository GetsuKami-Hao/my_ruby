a = { name: "kakarot" , age: 18 }

a.each{ |key,value| puts "#{key},#{value}" }

p a.keys
p a.values
puts a.has_key? :name
puts a.key? :name
# use Hash#key? instead of Hash#has_key? and Hash#value? instead of Hash#has_value?.

a.delete :name
p a.keys # => [:age]
a.delete_if { } # delete block return true element.
