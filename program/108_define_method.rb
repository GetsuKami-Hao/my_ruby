class Myclass

  attr_reader :name,:age

  define_method :set_user do |name,age|
    @name = name
    @age = age
  end

  attributes = [:set_name, :set_age]

  attributes.each do |method_name,attribute|
    define_method method_name do |var|
      @name = var if method_name == :set_name
      @age = var if method_name == :set_age
    end
  end
end

obj = Myclass.new
obj.set_user("newton",43)
obj.send(:set_user,obj.name, 77)  
puts "user name is #{obj.name}, user age is #{obj.age}"


user = Myclass.new
user.set_name('kakarot')
user.set_age(43)
puts "user name is #{user.name}, user age is #{user.age}"
