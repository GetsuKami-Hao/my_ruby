class Greeting

  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new("hello")
puts my_object.class

p my_object.class.instance_methods(false) #don't include inheritance instance method
p my_object.instance_variables