class A
  def disp
    puts "In class A"
  end
end

class B < A
  def disp
    puts "In class B"
  end
end

b = B.new
b.disp
