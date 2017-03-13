require 'thread'
puts "(Synchronize Thread)线程同步"

@num = 200
@mutex = Mutex.new

def buy_ticket(num)
	@mutex.lock
		if @num >= num
			@num = @num - num
			puts "you have successfully bought #{num} tickets,The remaining #{@num} tickets"
		else
			puts "sorry, no enough tickets,The remaining #{@num}"
		end
	@mutex.unlock
end

ticket1 = Thread.new 10 do
	10.times do |value|
		ticketNum = 15
		buy_ticket(ticketNum)
		sleep 0.01
	end
end

ticket2 = Thread.new 10 do
	10.times do |value|
		ticketNum = 20
		buy_ticket(ticketNum)
		sleep 0.01
	end
end

sleep 1
ticket1.join
ticket2.join
