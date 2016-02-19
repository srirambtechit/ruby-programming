s = 'hello'

puts s + s.class.to_s

s = 32

puts s.to_s + s.class.to_s

5.times {
	puts "Mice!\n"
}

puts "Elephants like Peanuts".length

puts Float::DIG

puts Float::MAX

#current object is accessed by 'self' keyword
puts self
puts self.class
print self.class.private_methods.sort
