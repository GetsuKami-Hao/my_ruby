#!/usr/bin/ruby
#

h = Hash["a" => 100, "b" => 200]

puts "#{h['a']}"
p h['b']

p h[0]

$, = ","
months = Hash.new("month");
months = {"1" => "January","2" => "Ferbruary"}

keys = months.keys

puts "#{keys}"  #show  key
