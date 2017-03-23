class Array  #open Array class and modify, all object can use.
  def say_hello
    "hello #{self.join(',')}"
  end
end

a = %w[world sunshine]
puts a.say_hello

b = %w[sky sunshine]
puts b.say_hello

class << b 
  def say_goodbye
    "goodbye #{self.join(',')}"
  end
end

p Array.ancestors

puts b.say_goodbye
# puts a.say_goodbye  #undefined method 'say_goodbye'.

