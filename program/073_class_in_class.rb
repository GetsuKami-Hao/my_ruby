class A
  p [self, self.class] # => A , class		
  def foo
    [self, self.class] # => [#<A:0x00000001b8b158>, A]
  end

  class B
    attr_accessor :name
    def initialize (name)
      @name = name
    end
  end
end

user = A::B.new("kakarot")

p user.name
p A.new.foo