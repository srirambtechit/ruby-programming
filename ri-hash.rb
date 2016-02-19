#!/usr/bin/ruby
# Ex-1
colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

colors.each do | key, value |
	print key, " is ", value, "\n"
end

# Ex-2
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine' }
puts h.length # 4
puts h['dog']
puts h
puts h[12]

# Ex-3
people = Hash.new
people[:firstname] = "sriram"
people[:age] = 26
people[:company] = "CTS"
puts people[:firstname]

# Ex-4
h = { :nickname => 'Pop', :age => 33, :country => "US" }
puts h

# Ex-5 Here key should start with alphabet
h = { nickname: 'Pop', age: 33, country: "US" }
puts h
