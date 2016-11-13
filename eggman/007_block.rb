def hi
  yield
	yield
end

def heo(name)
	yield(name)
end

def 

hi {p 'ok'}
hello = proc{|x| p "hello #{x}"}
hello.call("kakarot")

heo ("Getsu"){|tmp| puts"I love #{tmp}."}