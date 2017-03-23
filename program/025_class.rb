class User
	attr_accessor :name, :age # setter and getter method.

# attr accessor: there are four method.
# example:
#	  def name
#		  @name
#	  end
#
#   def name= name
#		  @name = name
#	  end	


  def initialize(name,age)
	  @name = name
	  @age = age
  end

  def say_hi
	  puts "i am #{@name}, i am #{@age}"
	  "i am #{@name}, i am #{@age}"
  end

  def hello   #  #{} can use method.
	  puts "hello world! #{say_hi}"
  end

end

user =User.new("kakarot","34")
user.say_hi
user.hello

