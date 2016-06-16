pattern = Regexp.new(ARGV[0])

filename = ARGV[1]

max_matches = 10 #最大输出行

matches = 0      #匹配成功的行数

file = open(filename)
while text = file.gets
	if matches >= max_matches
		break
	end
	if pattern =~ text
		matches += 1
		print text
	end
end
