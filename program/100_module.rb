module M
  def yourname
    p 'kakarot'
  end
end

module Kernel  #add method in Kernel
  def whatsyourname
    p 'my name is kakarot'
  end
end

include M

whatsyourname
yourname

p Kernel.private_instance_methods
