#!/usr/bin/ruby
# coding: utf-8
# if you give return multiple parameters, 
# the method returns them in an array
# The times method of the Integer class iterates block num times,
# passing in values from zero to num-1

unless ARGV.length == 1
  puts "Usage: ruby ri-array-return.rb <number>"
  exit
end

def mtdarray(no)
  10.times do | num |
    square = num * num
    return num, square if num == no #returning more than one variable as array
  end
end

# using parallel assignment to collect the retun value
num, square = mtdarray(ARGV[0].to_i)
print "number:", num, " square:", square, "\n"

nums = mtdarray(ARGV[0].to_i)
print "number:", nums[0], " square:", nums[1], "\n"
