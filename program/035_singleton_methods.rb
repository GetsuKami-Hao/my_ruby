a = Array.new

class << a
  def size
    puts super
    "hello kakarot in a"
  end
end

puts a.size
b = Array.new
puts '------' * 10
puts b.size