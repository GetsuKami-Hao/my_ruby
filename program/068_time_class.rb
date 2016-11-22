
t = Time.now
tt = t + 60 * 60 * 24
p t
p tt


t1 = Time.now
sleep(10)  #wait ten seconds
t2 = Time.now
p t1 < t2
p t2 - t1
