require 'socket'

ser = TCPSocket.new 'localhost' ,4001

while line= ser.gets
  puts line
  puts "--"* 60
end

ser.close
