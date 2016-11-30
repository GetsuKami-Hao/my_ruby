require 'socket'

socket = Socket.new(:INET , :STREAM)
addr = Socket.pack_sockaddr_in(4002, 'localhost')

socket.bind(addr)  #执行绑定
socket.listen(Socket::SOMAXCONN) #将侦听队列长度设置为允许的最大值

connection, _= socket.accept

copy = connection.dup  # 创建连接副本

connection.shutdown #关闭所有连接副本上的通信。

connection.close
#　关闭原始连接。副本会在垃圾收集器进行收集时关闭。
