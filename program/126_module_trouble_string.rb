module MyModule
  def my_method
		'mehotd define'
  end
end

module MyModule2
  def my_method2
    'method'
  end
end

class MyClass
  extend MyModule
end

p MyClass.my_method

myclss = MyClass.new

class << myclss
	include MyModule2
end

p myclss.my_method2