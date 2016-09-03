str = "abcdefgh"

p str[0]      # =>a
p str[3].chr  # =>d 
#In previous way, “p str[index]” just input 97 

str1 = "甲乙丙丁戊"

p str1.split(//u)[2] #=> 丙 
#“split” method arguments,when the character encoding is UTF-8,Use ”//u“argument  
p str1[3]

p str1[1,4]

