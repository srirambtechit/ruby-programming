#!/usr/bin/ruby

puts "hello"

obj =  File.readlines("/etc/passwd").grep(/sri/)
o = File.readlines("/etc/passwd").grep(/sriram/)
puts "File object :#{obj}"
puts "o : #{o} "

name = "sriia"
if File.readlines("/etc/passwd").grep(/#{name}/).any?
	puts "#{name} is exists"
else
	puts "#{name} is not exists"
end
