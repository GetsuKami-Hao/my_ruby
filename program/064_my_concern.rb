module MyConcern
  def append_features base
    super
    #p base  # => Device class
    #p super # => ActsAsField module
    base.instance_eval(&@_class_methods)
    base.class_eval(&@_class_eval)
  end

  def included base = nil, &block
    super
    @_class_eval = block
  end

  def class_methods &block
    @_class_methods = block
  end
end

module ActsAsField
  extend MyConcern

  included do 
    @@acts_as_fields = []
  end

  class_methods do
    def field name,path 
      result = class_variable_get(:@@acts_as_fields)
      result << name.to_sym
      class_variable_set(:@@acts_as_fields,result)

      define_method(name) do
        case path
        when String
          p path
          path.split(".").inject(self.latest_data) { |data,key| data[key] }
        when Proc
          path.call(self)
        end
      end
    end
  end

  def acts_as_fields
    self.class.class_variable_get :@@acts_as_fields		
  end
end

class Device
  include ActsAsField

  field :device_type , "device_type"
  field :battery , "data.battery"
  field :node_info , "data.node_info"

  field :battery_to_text , proc { |device| "#{device.battery}%" }

  def latest_data
    {
      "data" => {
        "node_info" => "this is  a sensor",
        "battery" => 90,
      },
      "device_type" => "sensor"
    }
  end
end


d = Device.new
# p d.node_info
# p d.battery_to_text
p d.acts_as_fields

# p Device.ancestors
# p ActsAsField.ancestors