#
#	In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.
#
#	The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, then one time color a...
#
#	Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm.
#
#	You have to write a function printer_error which given a string will output the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.
#
#	The string has a length greater or equal to one and contains only letters from ato z.
#	Examples:
#
#	s="aaabbbbhaijjjm"
#	error_printer(s) => "0/14"
#
#	s="aaaxbbbbyyhwawiwjjjwwm"
#	error_printer(s) => "8/22"

require 'test/unit'
def printer_error(s)
  s1 = s.gsub(/[a-m]/){|math| math="" }
  "#{s1.length}/#{s.length}"
# "#{s.gusb(/[a-m]/,'').length}/#{s.length}"
end

def printer_error_2(s)
  "#{s.count('n-z')}/#{s.length}"
end

print printer_error("dasrwafesgsvsdfsdfeswa")

class TestBug < Test::Unit::TestCase
  def test_printer_error_method
    assert_equal('3/14',printer_error('aaaaaaaaaaaxxx'))
    assert_equal('0/14',printer_error('aaabbbbhaijjjm'))
    assert_equal('8/22',printer_error('aaaxbbbbyyhwawiwjjjwwm'))
  end
end
