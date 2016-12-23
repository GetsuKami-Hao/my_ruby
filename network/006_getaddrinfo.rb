require 'socket'

p Socket.getaddrinfo("www.baidu.com", "http", nil, :STREAM)
p Socket.getaddrinfo('localhost', nil)

p Socket.gethostbyaddr([221,186,184,68].pack("CCCC"))

p Socket.gethostname 
