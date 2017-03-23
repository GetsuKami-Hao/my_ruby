a = 'hello world'

b = a.split(' ')
p b

b = b.join('()')
p b

puts '-' * 60
#var refer
a = 'hello world'
b = a
a[0] = '&'
puts b

puts "-" * 60

a = 'hello world'
b = a.dup #what's the difference with String#clone method?
a[0] = '&'
puts b



