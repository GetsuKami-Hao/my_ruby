require 'socket'

server = TCPSocket.new(4001)

loop do 
	begin 
		connection = server.accept_nonblock #非阻塞式接收

	rescue Error::EAGAIN
		#other option
		retry
	end
end