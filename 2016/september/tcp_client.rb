require "socket"

TCPSocket.open("www.baidu.com",80){|f|
	f.print "GET / HTTP/1.0\r\n\r\n"
	print f.read
}
