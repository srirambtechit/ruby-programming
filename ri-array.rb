#!/usr/bin/ruby

arr = [ "hi everyone", 10, true, "nice to meet you!!!", 13.45 ]

arr.each do | element |
	puts "Array data #{element}"
end

def print_array(arr)
	puts "len: #{arr.length}"
	puts "index-0: #{arr[0]}"
	puts "first: #{arr.first}"
	puts "last: #{arr.last}"
	puts
end

var1 = []
print_array(var1)

var2 = [ 'sriram', 22, false, 43.23 ]
print_array(var2)
puts var2[4] #nil

var2[4] = "Fedora" #array dynamically growed
var2[5] = "CentOS"
puts var2

puts ""
locations = [ "Mumbai", "Kolkata", 'Delhi', 'Chennai', 'Pune', 'Madurai', 'Coimbatore', "Bangalore" ]
locations.each do | loc |
	puts "I like " + loc
end

puts ""

locations.delete("Delhi")
print locations, "\n"
print locations.sort

puts ""


