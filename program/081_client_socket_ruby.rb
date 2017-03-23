require 'socket'

Socket.tcp('baidu.com' , 80) do |connection|
  p connection
  connection.write 'GET /HTTP/1.1\r\n'
  connection.close	
end