require 'dbi'

dbh = DBI.connect("dbi:Mysql:ruby:localhost","root","123456");
if dbh
	puts "数据库已经打开"
else
	puts "打开数据库失败"
end

row = dbh.select_one("SELECT VERSION()");
puts "服务器版本号： #{row[0]}"

if dbh
	dbh.disconnect

end
