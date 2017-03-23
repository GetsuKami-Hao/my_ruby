require 'socket'

module CloudHash
  class Server

    def initialize(port)
      @server = TCPServer.new(port)
      puts "Listening on port #{@server.local_address.ip_port}"
      @storage = {}
    end

    def start
      #accept 循环
      Socket.accept_loop(@server) do |connection|
        handle(connection)
        connection.close
      end
    end

    def handle(connection)
      #从连接中进行读取，直到出现EOF
      
      request = connection.read
      connection.write process(request)
    end
		
    #支持的命令：
    #SET key value
    #GET key
    def process(request)
      command , key , value = request.split

      case command.upcase
      when 'GET'
        @storage[key]
      when 'SET'
        @storage[key] = value
      end
    end
  end
end

server = CloudHash::Server.new(4001)
server.start
