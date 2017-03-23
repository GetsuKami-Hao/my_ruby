# new method to create block

#name is required

hello1 = -> (name){"hello #{name}."}
puts " -> #{hello1.lambda?}"
puts hello1.call("world")

puts "-" * 30

hello2 = lambda{ |name| "hello #{name}"}
puts hello2.call("lambda")

puts "-" * 30

hello3 = proc { |name| "hello #{name}"}
# puts hello3
puts hello3.call("proc")