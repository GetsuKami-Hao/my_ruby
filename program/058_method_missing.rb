class A
  @@attributes = {}

  class << self
    def method_missing(method_name, *params)
      method_name = method_name.to_s
      # p method_name # => name=
			# p params
    if method_name =~ /=$/
      @@attributes[(method_name.sub('=',''))] = params.first
			# p params.first
      else
        p method_name
        @@attributes[method_name]
      end
    end

    def to_s
      @@attributes
    end
	end

end