require 'socket'

#　创建侦听套接字
server = Socket.tcp_server_sockets(4444)

Socket.accept_loop(server) do |connection|
	# ...
	connection.close
end

Socket.tcp_server_loop(4444) do |connection|
	# ..
	connection.close
end
