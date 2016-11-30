require 'socket'

Socket.tcp_server_loop(4001) do |connection|
	loop do
		begin
			puts connection.read_nonblock(4096)  # 如果没有数据，就会产生一个Errno:EAGAIN 异常

		rescue Errno::EAGAIN
			retry
		rescue EOFError
			break
		end
	end
	connection.close
end