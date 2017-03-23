
MyClass = Class.new

My = Class.new

p MyClass.ancestors

p My.ancestors

def double(my_lambda)
  my_lambda.call *  2
end

la = lambda { return 10 }
p double(la) #=>20