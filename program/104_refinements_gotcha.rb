class MyClass
  def my_method
    "origin my_method()"
  end

  def other_method
    my_method
  end
end

module MyClassRefinemetn
  refine MyClass do 
    def my_method
      "refine my_method()"
    end
  end
end

using MyClassRefinemetn

p MyClass.new.my_method # => refine my_method
p MyClass.new.other_method # => origin my_method