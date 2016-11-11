require 'socket'


socket = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM)
addr = Socket.pack_sockaddr_in(3000,'127.0.0.1')
socket.bind(addr)
socket.listen(128)
connection, _ = socket.accept

#echo ohai | nc localhost 3000

