def map_with_index(list)
	result = []
	list.each_with_index { |item,index|
		value = yield [item , index] #yield 将获得的参数传递给代码块
		result << value
	}
	result
end

result = map_with_index([1,2,3]) { |item,index| 
																		puts "result =  #{item*index} "
																		item * index}
p result
