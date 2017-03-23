User = Class.new

User.class_eval  do
	
  attr_accessor :name

  def puts_name
    puts "User name is #{self.name}"
    puts "User name is #{@name}"
  end

  def self.userInfo
    {name: "newton" , age: 38}
  end

end

user = User.new

user.name = "kakarot"
user.puts_name
puts '--' *  60 

puts User.userInfo
