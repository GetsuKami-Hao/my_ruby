require 'test/unit'

def get_count(inputStr)
	puts "去除辅音字母之前：#{inputStr}"
	inputStr.gsub!(/[^a,e,i,o,u]/){ |match| ''}
	puts "去除辅音字母之后：#{inputStr}"
	inputStr.length
end

puts get_count("aassseefffcc")


class TestBug < Test::Unit::TestCase
	def test_simple
		assert_equal(2,get_count('abcdefg'))
		assert_equal(3,get_count('aaajjjhw'))
	end
end
