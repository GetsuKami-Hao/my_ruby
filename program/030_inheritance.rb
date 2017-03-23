class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def panels
    @panels ||= ['Profile','Products']
  end
end

class Admin < User

  def panels
    @panels ||= ['Profile', 'Products', 'Manage Users','System Setup']
  end
end

p Admin.superclass

user = User.new("kakarot", 34)
p user.panels

admin = Admin.new("newton" , 44)
p admin.panels
