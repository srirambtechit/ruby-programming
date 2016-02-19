class AbstractClass
  def welcome
    puts "#{hello} #{name}"
  end
end

class ConcreteClass < AbstractClass
  def hello; "Hello"; end
  def name; "Ruby students"; end
end

ConcreteClass.new.welcome # displays "Hello Ruby students"
