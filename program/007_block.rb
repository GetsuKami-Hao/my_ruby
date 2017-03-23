def hi
  yield
  yield
end

def heo(name)
  yield(name)
end

hi { puts 'ok' }
hello = proc { |x| puts "hello #{x}" }
hello.call("kakarot")

heo ('Getsu'){ |tmp| puts "I love #{tmp}." }