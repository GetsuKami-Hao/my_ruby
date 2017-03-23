class MyClass
  def my_method
    'old method'
  end
  alias_method :m,:my_method

  def my_method
    "new method"
  end

end

myclss = MyClass.new
p myclss.m
p myclss.my_method
