require 'socket'

client = TCPSocket.new('localhost' , 4001)

payload = "lorem ipsum" * 10_000

written = client.write_nonblock(payload)
written < payload.size