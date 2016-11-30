require 'socket'

client = TCPSocket.new('localhost', 4001)

#client.write('gekko')
a = client.read
puts a
client.close
