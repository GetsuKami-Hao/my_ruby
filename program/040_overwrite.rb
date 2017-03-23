class User
  def panels
	  @panels ||= ['Profile' , 'Products']
  end
end

class User  #open class
  def panels
    'overwrite'
  end
end

user = User.new
p user.panels