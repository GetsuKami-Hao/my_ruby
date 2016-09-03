str = "Ruby In A Nutshell:Yukihiro Matsumoto:2001:USA"

column = str.split(/:/)

p column

str1 = "Ruby In A Nutshell Yukihiro Matsumoto 2001USA"

tmp = str1.unpack("a20a20a4a*");
# "a + number of characters segmentation"
p column
