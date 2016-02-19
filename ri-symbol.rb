#!/usr/bin/ruby
# A Symbol is the most basic Ruby object you can create
# There's no need to assign a value
# Symbol guarantees that no matter where it appears in 
# you program, a particular symbol will have the sam value.
# Symbols are more efficient than strings. Two strings with 
# the same contents are two diffrent objects, but for any given 
# name there is only one Symbol object. This can save 
# both time and memory.

# Use the object_id method of class Object
# it returns an integer identifier for an object
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

#Example-1
class Test
  puts :Test.object_id.to_s
  def test
    puts :test.object_id.to_s
    @test = 10
    puts :test.object_id.to_s
  end
end

t = Test.new
t.test

# Example-2a
know_ruby = :yes
if know_ruby == :yes
  puts "You are Rubyist"
else
  puts "Start learning Ruby"
end

# Example-2b same as above without using symbol
know_ruby = 'yes'
if know_ruby == 'yes'
  puts "You are Rubyist"
else
  puts "Start learning Ruby"
end

# Example-2a & 2b are same but 2a is more efficient
# than 2b, 2b create two 'yes' object but 2a doesn't


# We can transform a String into a Symbol and vice-versa:
puts "string".to_sym.class
puts :symbol.to_s.class
