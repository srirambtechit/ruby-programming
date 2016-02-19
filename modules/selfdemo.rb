# In a class or module definition, self is the
# class or module object

class S
  puts "Just started class S"
  puts self

  module M
    puts "Nested module M"
	puts self
  end

  puts "Back in the outer level of S"
  puts self

end

# Self in instance method definitions
class S2
  def m
    puts "Class S2 method m"
	puts self
  end
end
s = S2.new
s.m


# Self in singleton-method and class-method definitions
# Singleton methods - those attached to a particular 
# object can be called by only one object. When a singleton
# method is executed, self is the object that owns the method,
# as shown below
obj = Object.new
def obj.show
  print "I am an object: "
  puts "here's self inside a singleton method of mine:"
  puts self
end

obj.show
print "And inspecting obj from outside, "
puts "to be sure it's the same object:"
puts obj

# Class methods are defined as singleton methods for class objects.
class S3
  def S3.x
    puts "Class method of class S3"
	puts self
  end
end
S3.x
