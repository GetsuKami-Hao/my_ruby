pattern = Regexp.new(ARGV[0])

filename = ARGV[1]

if /.gz$/ =~ filename
	file = IO.popen "gunzip -c #{filename}"
else
	file = open(filename)
end

while text = file.gets do
	if pattern =~ text
		print text					
	end
end


unless file.closed?
	print "整个文件一共有：#{file.lineno}行。\n" 
	file.close
end

#ruby simple_grep_gz.rb "love" "log.txt.gz"
