require 'socket'

Socket.tcp_server_loop(4001) do |conn|

	conn.write("Welcome!") #使用read　方法可以接受数据
	conn.close
end
