class HelloWorld
	def HelloWorld.hello(name)
		print name ," said hello.\n"
	end
end


class Hello

end
class << Hello
	def hello(name)
		print name," said hello.\n"
	end
end

class World
	def self.hello(name)
		print name," said hello.\n"
	end
end

HelloWorld.hello("kakarot")

Hello.hello("newton")

World.hello("Jhone")
