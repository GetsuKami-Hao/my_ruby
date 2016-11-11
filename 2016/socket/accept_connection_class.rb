require 'socket'

socket = Socket.new(Socket::AF_INET,:STREAM)
addr = Socket.pack_sockaddr_in(3000,'0.0.0.0')

socket.bind(addr)
socket.listen(128)
connection , _ = socket.accept

print 'Connection class:'
p connection.class
print 'Server fileno:'
p connection.fileno
print 'Local address: '
p connection.local_address
print 'Remote address: '
p connection.remote_address
