$stdout.sync = false
$stdout.print "out1 "
$stderr.print "err1 "
$stdout.print "out2 "
$stdout.print "out3 "
$stderr.print "err2\n"
$stdout.print "out4\n"

#根据书上所说　标准输出会现在缓存区缓存，等差不多的时候输出
#而，标准错误输出，不会缓存，会直接输出，所以输出顺序有可能和程序不一样
#但，这个的结果是一致的，原因暂时不明

# 标准输出可以使用　flush　来清空缓存区。
#设定　$stdout.sync　= true　可以要求所有对缓冲区的写入都直接调用 flush
