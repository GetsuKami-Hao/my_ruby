t = Time.new
p = t.strftime("%Y - %m - %d, %H:%M:%S")
puts p
puts t
p t.to_s
p t

p Time.now.utc
p Time.now.localtime
