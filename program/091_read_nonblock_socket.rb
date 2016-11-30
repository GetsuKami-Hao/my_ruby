require 'socket'


puts 'Listen 4001 port'
Socket.tcp_server_loop(4001) do |connection|

		begin
			puts connection.read_nonblock(4096)
		rescue Errno::EAGAIN => e
			IO.select([connection])
			retry
		end
	connection.close
end