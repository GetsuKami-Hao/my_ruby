require 'socket'


server = TCPSocket.new('localhost' , '4001')
server.setsockopt(:SOCKET, :REUSEADDR, true)
server.getsockopt(:SOCKET, :REUSEADDR)