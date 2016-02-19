#!/usr/bin/ruby
# A regular expression is simply a way of specifying a 
# pattern of characters to be matched in string.

puts //.class # Regexp

m1 = /Pune|Ruby/.match("The future is Ruby")
puts m1.class # MatchData
m2 = "The future is Ruby" =~ /Ruby/
puts m2 # it returns 14

puts /a/.match("b")
puts /a/.match("This is a boat")

string = "My phone number is (123) 555-1234."
phone_regex = /\(([0-9]{3})\)\s+(\d{3})-(\d{4})/
m = phone_regex.match(string)
unless m
  puts "There was no match..."
  exit
end

print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: " 
3.times do | index |
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's anohter way to get at the first capture"
print "Capture #1: "
puts m[1]
