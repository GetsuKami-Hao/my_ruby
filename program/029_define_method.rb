module SetUp
  def setup_accessor(*var)
    var.each do |var|
      define_method var  do
        instance_variable_get "@#{var}"
		  end
      
      define_method "#{var}=" do |value|
        instance_variable_set "@#{var}" , value
      end
	  end
	end
end

class User
	#attr_accessor :name , :age
	extend SetUp

  setup_accessor :name, :age

  def initialize(name ,age)	
    @name = name
    @age = age
  end
end

user = User.new("kakarot",34)
user.name = "newton"
puts user.name