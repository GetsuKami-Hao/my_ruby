# Task:
#
# Your task is to write a function which returns the sum of following series upto nth term(parameter).
#
# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
#
# Rules:
#
#   You need to round the answer upto 2 decimal places and return it as String.
#
#		    If the given value is 0 then it should return 0.00
#
#				    You will only be given Natural Numbers as arguments.
#
#						Examples:
#
#						SeriesSum(1) => 1 = "1"
#						SeriesSum(2) => 1 + 1/4 = "1.25"
#						SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"
#
#						NOTE: In PHP the function is called series_sum().
#
require 'test/unit'

def series_sum(n)
  result = 0.0
  tmp = -2.0 
  n.times { result += 1/(tmp += 3) }
  "%.2f" % result
end

class TestBug < Test::Unit::TestCase
  def test_series_sum
    assert_equal(series_sum(0), "0.00")
    assert_equal(series_sum(1), "1.00")
    assert_equal(series_sum(2), "1.25")
    assert_equal(series_sum(3), "1.39")
  end
end
