# A module may contain constants, methods and classes.
# No instances

module Stuff
  COUNT = 10 # constant
  def Stuff.mulCount(x) # prefix with the module name for class method
    COUNT * x
  end

  def addCount(x) # an instance method, mixin for other classes
    COUNT + x
  end

  class Delta # class
    @del = 2
  end
end


puts Stuff::COUNT # accessing constant - uninitialized constant error thrown
puts Stuff.mulCount(4) # accessing like a class method
x = Stuff::Delta.new
