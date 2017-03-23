require 'thread'
puts 'SizedQueue Test'

queue = Queue.new

producer = Thread.new do
  10.times do |i|
    sleep rand(i)
    queue << i
   puts "#{i} produced"
  end
end

consumer = Thread.new do
  10.times do |i|
    value = queue.pop
    sleep rand(i/2)
    puts "consumed #{value}"
  end
end

consumer.join
