class User

  def self.setup_accessor(*arg)
    arg.each do |var|
      define_method var do
        instance_variable_get "@#{var}"
      end
    end

    arg.each do |var|
      define_method "#{var}=" do |value| 
        instance_variable_set "@#{var}" ,value
      end
    end
  end

  setup_accessor :name, :age

  def to_s
    "name: #{@name} \nage: #{@age}"
  end
end

user = User.new

user.name = "kakarot"
puts user.name

user.age = 14
puts user.age

puts user