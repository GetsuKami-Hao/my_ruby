class A

  def method_name 
    'method in A'
  end
end

a = A.new
def a.method_name
  'method in singleton'
end

p a.method_name
p a.singleton_class.superclass # => A
p a.singleton_class.class 