require 'test/unit'

def get_count(inputStr)
  #puts "去除辅音字母之前：#{inputStr}"
  inputStr.count('aeiou')
  #puts "去除辅音字母之后：#{inputStr}"
  #inputStr.length
end

puts get_count("aassseefffcc")


class TestBug < Test::Unit::TestCase
  def test_simple
    assert_equal(2,get_count('abcdefg'))
    assert_equal(3,get_count('aaajjjhw'))
    assert_equal(2,call_method(:get_count,"abcdefg"))
	end

  private
  
  def call_method(name,arg)
    send(name,arg)
  end
end
