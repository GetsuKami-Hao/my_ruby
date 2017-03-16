require 'mechanize'

INFO = 'http://news.xupt.edu.cn/'

info_origin = {campus: 'http://news.xupt.edu.cn/qqxy.htm', comprehensive:'http://news.xupt.edu.cn/xydt.htm'}


def find_news(uri)
	begin
		links = Mechanize.new.get(uri).search("li span a").to_a
		links.each do |link|
			puts "「#{link.text}」 (#{INFO}#{link.values[0]}) \n"
		end
	rescue
		puts "无网络连接"
		#print "--#{link.values[3]}--"  #同时用两个link.values就会出现问题
		#print "(#{INFO}#{link.values[0]}) \n"
	end
end



info_origin.each do |section,uri|
	puts "#{section}："
	find_news(uri)
end
