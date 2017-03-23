

a = nil 
b = nil || 10  
puts b 

c = b || 14 #　成立停止执行
puts c # => 10


d = b && 14 #　成立继续执行
puts d # => 14

f = nil && 1 #不成立就不会继续执行
p f  # => nil

a = nil
b = nil or 10 # or 的优先级低于赋值运算
p b # => nil