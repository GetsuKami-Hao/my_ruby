class User
  attr_accessor :name, :age

  def initialize(name ,age)
    @name = name
    @age = age
  end

  public
  
  def show_info
    info = get_name << ", " << get_age
    puts info
  end

  def get_name
    "my name is #{@name}"
  end

  def get_age
    "I'm #{@age}"
  end

  private :get_age , :get_name
end

user = User.new("kakarot", 34)
user.show_info

# puts user.get_age 
# private method 'get_age'


