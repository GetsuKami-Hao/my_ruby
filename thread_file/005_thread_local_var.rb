count = 0
arr = []

10.times do |i|
  arr[i] = Thread.new do 
    sleep(rand(0)/10.0)
    Thread.current["mycount"] = count
    count += 1 
  end	
end


arr.each do |t|
  t.join
  print t["mycount"], ","
end

puts "count = #{count}"

