class User

  attr_reader :name, :age  # getter method.

  def initialize(name,age)
	  @name = name
	  @age = age
  end

end

user1 = User.new("kakarot",15)
p user1.name
p user1.age
