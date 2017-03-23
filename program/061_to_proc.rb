class AddBy
  def initialize(num = 0)
    @num = num
  end

  def to_proc
    Proc.new{ |obj| obj.send('+', @num) }
  end
end

add_by9 = AddBy.new(9)
puts [1,2,3].map(&add_by9)



def f
  yield 0
  yield 1, 2
end

f do |a1, a2, a3|
  puts a1   
  puts a2   # if no parameter,here will output blank line.
  puts a3
end