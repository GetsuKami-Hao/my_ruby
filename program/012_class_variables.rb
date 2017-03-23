# instance variable and class variable.
# 尽量不要使用类变量，使用类实例变量。
# 在类继承中，类变量会不合适。
class People
  attr_reader :name

  @@counter = 0;
  def initialize(name)
    @name = name
    @@counter += 1
  end

  def get_counter
    @@counter
  end
end

user1 = People.new("kakarot")
puts user1.name
puts "id = #{user1.get_counter}"

user2 = People.new("newton")
puts user2.name
puts "id = #{user2.get_counter}"
