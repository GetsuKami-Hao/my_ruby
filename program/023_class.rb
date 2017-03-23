class User

  attr_reader :name, :age  # getter method.
  def initialize name,age
    @name = name
    @age = age
  end

  #setter.
  def name= name
    @name = name
  end

  def age= age
    @age = age
  end

  # 尽量使用　attr_*
end

user1 = User.new("kakarot",15)
p user1.name
p user1.age

user1.age = 20
p user1.age
