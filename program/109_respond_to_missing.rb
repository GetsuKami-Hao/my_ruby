class MyClass
  def method_missing(method_name, *args)

    match = method_name.to_s.match(/(.*?)([?=!]?)$/)

    case match[2]
    when '='
      @@attrtibutes["#{match[1]}"] = args.first
    else
      @@attrtibutes["#{match[1]}"]
    end
  end

  def respond_to_missing?(method) #添加这个方法才能调用respond_to?返回幽灵方法　true
    true
  end
	
  private
		
  @@attrtibutes = {}
end

toge = MyClass.new
toge.heigh =  11
p toge.heigh
p toge.respond_to?(:heigh)
