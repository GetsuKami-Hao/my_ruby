
var = 123

p %q(#{var})
p '#{var}'
p %Q("#{var}"")  

p <<HERREDOC
  Oh, my god
  It's my life
HERREDOC
