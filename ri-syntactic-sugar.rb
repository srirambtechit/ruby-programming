class Dog
  #create reader only
  attr_reader :breed, :name

  def initialize(breed, name)
    @breed = breed
	@name  = name
  end

  #setter methods
  def breed=(b)
    @breed = b
  end

  def name=(n)
    @name = n
  end
end

d = Dog.new("Doberman","Benzy")
#getters
puts d.name 
puts d.breed

#setters
d.name = "Domy"

puts d.name
