begin 
  t = Thread.new do
    Thread.pass
    raise "unhandled exception"
  end
  t.join
rescue 
  p $!
end

#当某线程发生异常，且没有被rescue捕捉到时，改线程通常会被无警告的终止。
#但是，若有其他线程因为Thread#join的关系一直等待改线程的，则等待的线程
#会引发同样的异常
