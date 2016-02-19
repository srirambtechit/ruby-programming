#!/usr/bin/ruby
# Blocks are not objects, but they can be converted into objects of class Proc.
# This can de bone by calling the lambda method of class Object.
prc = lambda { puts "hello" }
# method call invokes the block
prc.call

say_proc = lambda do 
  puts "Hello block"
end

puts say_proc.call

=begin
 You can not pass method into other methods (but you can pass procs into
 methods), and methods cannot return other methods (but they can return procs)
=end
def my_method(some_proc)
  puts "my_method starts"
  some_proc.call
  puts "my_method ends"
end

say = lambda do
  puts "My procs"
end

my_method(say)

# Procs with input parameter
a_block = lambda { |x| "Hello #{x}!" }
puts a_block.call "world" # output is: Hello world



