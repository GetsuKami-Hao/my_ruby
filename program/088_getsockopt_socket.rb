require 'socket'

socket = TCPSocket.new('www.baidu.com' , 80)


#获得一个描述套接字类型的Socket::Option 实例
opt1 = socket.getsockopt(Socket::SOL_SOCKET, Socket::SO_TYPE)

#将描述该选项的整数值同存储在Socket::SOCK_STREAM中的整数值进行比较。
p opt1.int == Socket::SOCK_STREAM   # => true
p opt1.int == Socket::SOCK_DGRAM  	# => false


opt2 = socket.getsockopt(:SOCKET, :TYPE) # use symbol

p opt2.int == Socket::SOCK_STREAM   # => true
p opt2.int == Socket::SOCK_DGRAM  	# => false

