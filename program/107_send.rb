class A
  attr_accessor :name, :age
  
  private 

  def yourname
    'kakarot'
  end

  def your(name,age)
    @name = name
    @age = age			
  end
end


p A.new.send(:yourname) #send可以调用私有方法。
# p A.new.yourname  #: private method `yourname' called for #<A:0x00000001293cf8> (NoMethodError)

him = A.new
him.send(:your,'newton',43)
puts "name is #{him.name}, age is #{him.age}" 