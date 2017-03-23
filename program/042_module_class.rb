module People
  def self.info
    "Man evolved from anthropoid ape."
  end

  def life_style
    puts "Human being are social creatures."
  end
end

module User
  include People
  
  def self.info
    # super  # 'info': super: no superclass method 'info'
    "User is god"
  end

  def life_style
    super
    "User being are hobbies creatures."
  end
end

class Manage
  include User
end

puts User.info

puts '-' * 80

man = Manage.new
puts man.life_style