require_relative "ri-motorcycle"
m = MotorCycle.new("Yamaha", "red")
m.start_engine

# In Ruby, classes are open to modify
class MotorCycle
  def disp_attr
    puts "Color of the MotorCycle is #{@color}"
    puts "Make of the MotorCycle is #{@make}"
  end
end

m.disp_attr
m.start_engine
puts self.class
puts self
