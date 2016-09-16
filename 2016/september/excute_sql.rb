require 'dbi'
begin 
	conn = DBI.connect("dbi:Mysql:ruby:localhost","root","123456");

	conn.do("DROP TABLE IF EXISTS teacher");

	conn.do("create table teacher(id int not null,name varchar(20) not null,age int,primary key(id))");
	rows = conn.do("insert into teacher(id,name,age)values(1,'kakarot','23'),(2,'newton',55)")
	puts "新增人数：#{rows}"

	updaterows = conn.do("update teacher set age = 32 where name = 'newton'");
	rescue DBI::DatabaseError => e
		puts "错误信息提示："
		puts "错误编号： #{e.err}"
		puts "错误信息： #{e.errstr}"
	ensure
		conn.disconnect if conn
	end
