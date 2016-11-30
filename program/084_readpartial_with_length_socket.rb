require 'socket'

one_hundred_kb = 1024 * 100

Socket.tcp_server_loop(4001) do |connection|
	begin
		#每次读取100KB或者更少。 　如果没有数据，readpartial 仍旧会陷入阻塞
		while data = connection.readpartial(one_hundred_kb) do
			puts data   

		end

	rescue EOFError
	
	end

	connection.close
end
