#!/usr/bin/ruby
# How do I convert objects into an Array?

str = "hello"
print Array(str).class # Array

puts ""

str = "hello\nwolrd"
print str
puts ""
print Array(str) # ["hello\\nwolrd"]

puts ""
a = [1, 2, 3, 4]
print a.class.ancestors

puts ""
