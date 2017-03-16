=begin
Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out.

Note: The function accepts an integer and returns an integer
=end

require 'test/unit'

def square_digits num
	result = ""
	num.to_s.each_char do |x|
		result += ((x.to_i) * (x.to_i)).to_s
	end
	result.to_i
end

# 来自网络，执行时间差不多，代码量很少
def square_digits_2 num
		num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
# "string".chars #=>['s','t','r','i','n','g']
p square_digits(12345)


class Test_Bug < Test::Unit::TestCase
	def test_square_digits_method
		assert_equal(1491625,square_digits(12345))
		assert_equal(99999,square_digits(33333))
	end
end
