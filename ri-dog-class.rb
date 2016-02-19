#!/usr/bin/ruby

class Dog
  def initialize(breed, name)
    # Instance variables
    @breed = breed
    @name = name
  end

  def bark
    puts "Ruff! Ruff!"
  end

  def display
    puts "I am of #{@breed} and my name is #{@name}"
  end
end

# Make an object
# object are created on the heap
d = Dog.new('Labrador','Benzy')

puts "The id of d is #{d.object_id}."

if d.respond_to?("talk")
  d.talk
else
  puts "Sorry, d doesn't understant the 'talk' message."
end

d.bark
d.display

# Making d and d1 point to the same object
d1 = d
d1.display

#Making d a nil reference, meaning it does not refer to anything
d = nil
d.display

# If I now say
d1 = nil
# then the Dog object is abandoned and eligible for Garbage Collection (GC)

