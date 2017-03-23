x = Thread.new do
  sleep 0.01
  print "x"
  print "y"
  print "z"
end

a = Thread.new do
  print "a"
  print "b"
  sleep 0.02
  print "c"
end

#x.join
#a.join
