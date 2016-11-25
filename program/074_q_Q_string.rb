
var = 123

p %q(#{var})
p '#{var}'
p %Q("#{var}"")  #会将" 转译成　\"

p <<HERREDOC
	Oh, my god
	It's my life
HERREDOC