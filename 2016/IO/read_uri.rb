require "open-uri"

open("http://www.ruby-lang.org"){|io|
	puts io.read
}

open("ftp://www.ruby-lang.org/pub/ruby/ruby-1.8.4.tar.gz"){|io|
	open("ruby-1.8.4.tar.gz","w"){|f|
		f.write(io.read)
	}
}
