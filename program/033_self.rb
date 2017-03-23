class User

  attr_accessor :name, :age

  def initialize(name,age)
	  @name, @age = name , age
  end

  def to_s
    name = "anewton"
    "name = #{self.name}	age = #{self.age}"
    # output anewton if without 'self' keyword.
  end

  def re_to_s
    name = "anewton"
    "re -- name = #{name}	age = #{self.age}"
  end
	
  def self.puts_info
    puts "love youu"
  end

end

user = User.new("kakarot",32)
puts user  # output unless without to_s method in 'User class'.
puts user.re_to_s
User.puts_info