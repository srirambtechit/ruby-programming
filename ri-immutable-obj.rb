# Freezing objects : The freeze method in class
# prevents you from changing on object, effectively
# turning an object into a constant. After we freeze
# an object, an attempt to modify it results in 
# RuntimeError. 
str = "A simple string"
str.freeze # Making it as immutable
begin
  str << "An attempt to modify"
rescue => err
  puts "#{err.class} #{err}"
end
# The output is => RuntimeError can't modify frozen string


# freeze operates on an object referene
# not on a variable. This means that any operation 
# resulting in a new object will work.
str = "Original string - "
str.freeze
str += "attachment"
puts str # => Original string - attachment

# frozen?
a = b = "string1"
b.freeze
puts a.frozen? # true
puts b.frozen? # true
a = "string2"
puts a
puts b
puts a.frozen? # false
puts b.frozen? # true







