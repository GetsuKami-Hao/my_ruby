require "date"

t = DateTime.now # 理应避免使用
p t
puts t  #auto call t.to_s method.
p t.to_time
