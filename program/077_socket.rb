require 'socket'
=begin
socket = Socket.new(Socket:: AF_INET, Socket:: SOCK_STREAM)
 INET 是internet的所写，特别用于指代IPV4
 STREAM 表示将使用数据流进行通信
 DGRAM 表示UDP套接字
=end

socket = Socket.new(:INET , :STREAM)
addr = Socket.pack_sockaddr_in(4002, 'localhost')

socket.bind(addr)  #执行绑定
socket.listen(Socket::SOMAXCONN) #将侦听队列长度设置为允许的最大值
# p Socket::SOMAXCONN     # => 128

connection, _= socket.accept

p connection # => #<Socket:fd 8>
p _ # => #<Addrinfo: 127.0.0.1:35804 TCP> 　　　　Addrinfo 对象

print "connection class: "
p connection.class

print "Socket fileno: "
p socket.fileno

print "connection fileno: "
p connection.fileno

print "Local address: "
p connection.local_address

print "Remote address: "
p connection.remote_address

