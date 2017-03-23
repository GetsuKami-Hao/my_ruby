class User
  def panels
    @panels ||= ['Profile' , 'Products']
  end
end

# class Admin < User ; end
Admin = Class.new(User) #单行定义类方法。

p Admin.ancestors  # show class inheritance relationship.

# admin = Admin.new
# p admin.panels