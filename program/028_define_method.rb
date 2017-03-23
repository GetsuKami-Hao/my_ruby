define_method :hello do |var| 
  puts "hello world, #{var}" 
end
# 这里不能使用{}代替。

hello "zheng"