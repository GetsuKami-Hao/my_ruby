class Fixnum
  alias_method :old_plus , :+
  def +(num)
    self.old_plus(num).old_plus(1)
  end
end

class Array
  def append_z
    self << "z"
  end
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
p 3+4


user_input = "User input #{gets()}"
puts user_input.tainted? #判断字符串是否被污染

p [].append_z.append_z.append_z