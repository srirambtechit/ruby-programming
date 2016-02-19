require_relative 'ri-dog-class'
#redefine class Dog
class Dog
  def big_bark
    puts "Woof! Woof!"
  end
end

# Make an object
d = Dog.new("Labrador", "Benzy")
d.bark
d.big_bark
d.display
