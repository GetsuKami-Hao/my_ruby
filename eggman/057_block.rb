

# 答案
class EnuTest

  def initialize &block
    @eb = EnuBlock.new
    yield @eb
  end

  def next
    @eb.next
  end

  def to_s
  	@eb.to_s
  end

end

class EnuBlock

  def initialize
    @blocks = []
  end

  def << obj
    if obj.is_a? Proc
      @blocks << obj
    else
      @blocks << proc { obj }
    end
  end

  def next
    if @blocks.empty?
      "EOF"
    else
      @blocks.shift.call
    end
  end

  def to_s
  p	@blocks
  end

end

# 测试题，请实现以下类EnuTest的功能
enu = EnuTest.new do |x| 
  x << 1
  x << 3
  x << proc { 'hello' }
end




p enu
p enu.next # => 1
p enu.next # => 3
p enu.next # => 'hello'
p enu.next # => raise error 'EOF'
p enu