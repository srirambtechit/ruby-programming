#!/usr/bin/ruby
# Range is Fixnum object

puts "Inclusive Range"
(1..10).each do | i |
	print i, "  "
end

puts ""

puts "Exclusive Range"
(5...10).each do | n |
	print n, "  "
end

puts ""

digits = -1..9
puts digits.include?(4) # true
puts digits.min		# -1
puts digits.max		# 9
print digits.reject { | i | i < 5 } # [ 5, 6, 7, 8, 9 ]
puts ""

# Another use of range is as an interval test: 
# using ===, the case equality operator
puts (1..10) === 5 # true
puts (1..10) === 15 # false
puts (1..10) === 3.14159 # true
puts ('a'..'f') === 'c' # true
puts ('a'..'f') === 'j' # false
