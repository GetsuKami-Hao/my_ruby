
module ArrayRefine
  refine Array do 
    def methods
      'kakarot'
    end
  end
end


p [].methods.grep(/^s/)

using ArrayRefine
p [].methods

# 《ｒｕｂｙ元编程》说无法对methods() , ancestors() 方法细化。
# 在2.3.0中可以。