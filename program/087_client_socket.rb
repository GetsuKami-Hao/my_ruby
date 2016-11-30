require 'socket'

module CloudHash
	
	class Client
		class << self
			attr_accessor :host, :port
		end

		def self.get(key)
			request "GET #{key}"
		end

		def self.set(key, value)
			request "SET #{key} #{value}"
		end

		def self.request(string)
			@client = TCPSocket.new(host, port)
			@client.write(string)
			
			#完成请求后发送EOF
			@client.close_write
			
			#一直读取到EOF来获取响应信息
			@client.read
		end

	end
end	


CloudHash::Client.host = 'localhost'
CloudHash::Client.port = '4001'

puts CloudHash::Client.set 'prez' , 'obama'
puts CloudHash::Client.get 'prez'
puts CloudHash::Client.get 'vp' #不存在的键
