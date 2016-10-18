require 'dbi'
begin
	conn = DBI.connect("dbi:Mysql:ruby:localhost","root","123456");

	query = "select * from teacher";
	sth = conn.execute(query)
	puts "SQL语句：" + query
	if sth.column_names.size == 0 then
		puts "查询语句没有返回结果集"
		printf "Number of rows affected : %d\n",sth.rows
	else
		puts "SQL语句返回结果集"
		rows = sth.fetch_all
		printf "行数: %d\n",rows.size
		printf "列数: %d\n",rows.column_names.size
		sth.column_info.each_with_index do |id,name,age|
			printf "---Column %d %s %d-----\n",id,name.name,age
			printf "precision :%s\n",name.precision
			printf "scale: %s\n",name.scale
	end
end
sth.finish

rescue DBI::DatabaseError =>e
	puts "错误信息编号：#{e.err}"
	puts "错误信息： #{e.errstr}"
ensure
	conn.disconnect if conn
end
