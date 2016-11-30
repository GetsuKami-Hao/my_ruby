str = "This is a string"
p str.dup
p str.clone

p str.object_id
p str.dup.object_id
p str.clone.object_id

p "This is a string".size
p "This is a string".split(//).length
p "This is a string"[0..10]

p (/[ \t]/ =~ "a c ")  #正则匹配, 返回第一次匹配的下标 => 1
p "xxxghjkl79xxx".index(/xxx/)
