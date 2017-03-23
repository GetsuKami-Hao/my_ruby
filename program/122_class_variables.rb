class A
  @@var = 2  #类变量会被继承下来
end

class B < A
  def get_var
    @@var
  end
  def initialize
  end
end

p B.new.get_var
