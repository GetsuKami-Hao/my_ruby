# var change

a = 1
b = 2
a,b = b,a
puts "a = #{a} , b = #{b}"

x = [1,2,3]
a,b = x   # a = 1; b =2
puts "a = #{a} , b = #{b}"

x = [1,2,3]
a, *b = x  #*b 接受剩余数组。 => a=1; b = [2,3]
puts "a = #{a}"
p b