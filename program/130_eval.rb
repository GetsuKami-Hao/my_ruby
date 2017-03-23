require "test/unit"

module CheckedAttributes
  def self.included(base)
    base.extend ClassMethod
  end

  module ClassMethod
    def attr_checked(attribute,&validation)
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value)
        instance_variable_set("@#{attribute}", value)
      end

      define_method "#{attribute}" do 
        instance_variable_get("@#{attribute}")			
      end
    end
  end
end

class Class
  def attr_checked(attribute, &validation)
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless validation.call(value)
      instance_variable_set("@#{attribute}", value)
    end
    define_method "#{attribute}" do 
      instance_variable_get("@#{attribute}")
    end
  end
end



class Person 
  include CheckedAttributes
  attr_checked :age do |var|
    var >= 18
  end
end

class TestCheckedAttribute < Test::Unit::TestCase

  def setup
    # add_checked_attribute(Person,:age) { |var| var >= 18}
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuse_invalid_values
    assert_raises RuntimeError , "Invalid attribute" do 
      @bob.age = 1
    end
  end
end


# def add_checked_attribute(klass,attribute)
#   eval "
#     class #{klass}
#       def #{attribute}=(value)
#         raise 'Invalid attribute' unless value
#         @#{attribute} = value
#       end

#       def #{attribute}
#         @#{attribute}
#       end
#     end
# 	"
# end