lambda {
	setups = []
	events = []

	Kernel.send :define_method, :setup do |&block|  #在内核中定义方法。
		setups << block
	end

	Kernel.send :define_method, :event do |description,&block|
		events << {description: description, condition: block}
	end

	Kernel.send :define_method , :each_setup do |&block|
		setups.each do |setup|
			block.call setup
		end
	end

	Kernel.send :define_method , :each_event do |&block|
		events.each do |event|
			block.call event
		end
	end
	}.call #执行代码块

load '120_events.rb'

each_event do |event|
	each_setup do |setup|
		setup.call
	end
	puts "ALERT: #{event[:description]}" if event[:condition].call
end