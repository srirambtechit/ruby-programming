#!/usr/bin/ruby

names = %w{ sriram surya selva gokul soma martin }

puts "Writing a file"
# Write content to file
File.open("test.txt", 'w') do | f |
  names.sort.each do | name |
    f.puts "Hello, #{name}"
  end
end

puts "\nReading a file"
# Read full file
f = File.new("test.txt")
while line = f.gets
  puts line
end

puts "\nRandom Access File"
# Random access
f = File.new("test.txt")
f.seek(10, IO::SEEK_SET)
puts f.readline
f.close

# Traversing Directory Trees
require "find"
Find.find("./") do | f |
  type = case 
         when File.file?(f) then "F"
	 when File.directory?(f) then "D"
	 else "?"
	 end
  puts "#{type}: #{f}"
end

