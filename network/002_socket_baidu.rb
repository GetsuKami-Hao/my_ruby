require 'net/http'

Net::HTTP.version_1_2

Net::HTTP.start('www.baidu.com', 80) do |http|
  response = http.get('/index.html')
  puts response.body
end
