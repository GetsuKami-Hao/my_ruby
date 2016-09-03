str = "abcd"

newstr = str.chop  #chop method definitely delete a character.
p newstr

newstr = str.chomp #chomp method just delete wrap character.
p newstr
str2 = "adcd\n"
newstr = str2.chop
p newstr
newstr = str2.chomp
p newstr

#“chop” and “chomp” ,don't destory the original string.
#“!chop” and “chomp!”, will destory the original string.
