
# class Roylette
#   def method_missing(name,*args)
#     person = name.to_s.capitalize
#     3.times do   #number只是代码块中的局部变量。
#       number = rand(10) + 1
#       puts "#{number}..."
#     end
#     "#{person} got a #{number}"　#number会被当成一个在self上省略括号的方法调用
# end


# number_of = Roylette.new
# puts number_of.bob

class Roylette
  def method_missing(name,*args)
    person = name.to_s.capitalize
    return '没有该员工哦' unless %w[Bob Kakarot Newton].include? person
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end

number_of = Roylette.new
puts number_of.bob