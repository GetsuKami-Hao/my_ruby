#This method expects an array of filenames
#It returns an array of string holding the content of the named files
#The method create one thread for each name file.

filename = ARGV[0]

def readfiles(filename)
	threads = filename.map do |f|
		Thread.new{File.read(f)}
	end

threads.map{|t| t.value}
end
