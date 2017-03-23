require 'socket'

socket = Socket.new(:INET ,:STREAM)

remote_addr = Socket.pack_sockaddr_in(4001, 'www.baidu.com')

begin
  #在端口为80向百度发起一个非阻塞是连接
  socket.connect_nonblock(remote_addr)

rescue Errno::EINPROGRESS
  #操作正在进行中
  p Errno::EINPROGRESS
rescue Errno::EALREADY
  # 之前的非阻塞式连接已经在进行当中。
  p Errno::EALREADY 
rescue Errno::ECONNREFUSED
  #　远程主机拒绝连接
  p Errno::ECONNREFUSED
end

