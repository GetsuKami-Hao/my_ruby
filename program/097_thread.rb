def thread1
  i = 0
  while i <= 2
    puts "thread1 at: #{Time.now}"
    sleep(2)
    i += 1;
  end
end

def thread2
  j = 0
  while j <= 2
    puts "thread2 at #{Time.now}"
    sleep(2)
    j += 1
  end
end

puts "started at #{Time.now}"
t1 = Thread.new { thread1() }
t2 = Thread.new { thread2() }
t1.join()
t2.join()
puts "End at #{Time.now}"
