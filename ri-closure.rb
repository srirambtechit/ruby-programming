#!/usr/bin/ruby

def call_block1
	puts "Start of method"	
	yield
	puts "End of method"
end

call_block1 do #Invoking a method in normal way
	puts "In block method"
end

puts ""

def try
	puts "try block starts"
	if block_given?
		yield("Sriram")
	else
		puts "no block"
	end
	puts "try block ends"
end

try # => "no block"
try { puts "hello block" } # => "hello block"
try do puts "hello block" end # => "hello block"
try do | name |
	puts "hello block value: #{name}"
end

