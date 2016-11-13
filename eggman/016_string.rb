a = "hello"
puts a.empty? # =>false

a[0] = "2"
puts a

a.freeze
#a[0] = "h" # can't modify frozen String.
a = "hello world."  # ok ,re-assign value
puts a # => world.

puts a.sub('o','A') #a isn't modified, and modify first o.
puts a.gsub('o','A') # a isn't modified, and modify all o.
puts "sub() and gsub() after a: #{a}"
a.gsub!('o','O') # boom method,modify a.
puts "sub!() or gsub!() after a: #{a}"

puts a.start_with? 'h'
puts a.end_with? '.'
puts a.include? 'o'