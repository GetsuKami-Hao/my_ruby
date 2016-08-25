alpha = ["a","b","c","d","e","f","g"];
alpha[2..4] = ["2","3","4"]
p alpha
alpha[5...6] = [".",","] #three or two is ok,others is error.
p alpha
a = ["a","b","c","d","e","f","g"];
a[3,0] = ["4","5"] #在下表为3的地方连续插入
p a
