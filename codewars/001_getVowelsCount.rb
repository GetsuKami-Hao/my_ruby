require 'test/unit'

def get_count(inputStr)
	puts "去除辅音字母之前：#{inputStr}"
	inputStr.gsub!(/[^a,e,i,o,u]/){ |match| ''}
	puts "去除辅音字母之后：#{inputStr}"
	inputStr.length
end

puts get_count("aassseefffcc")
