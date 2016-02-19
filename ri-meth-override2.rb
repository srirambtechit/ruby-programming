class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end

t = Tandem.new(5)
puts "wheels : #{t.wheels}"
puts "seats  : #{t.seats}"
puts "gears  : #{t.gears}"

b = Bicycle.new
puts "wheels : #{b.wheels}"
puts "seats  : #{b.seats}"
puts "gears  : #{b.gears}"


