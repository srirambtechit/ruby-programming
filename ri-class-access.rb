class ClassAccess
  def m1 # this method is public
    puts "Parent class m1"
  end

  protected
  def m2 # this method is protected
    puts "Parent class m2"
  end

  private
  def m3 # this method is private
    puts "Parent class m3"
  end
end

class ChildClass < ClassAccess
  def m1
    puts "Child class m1"
  end

  def m2
    puts "Child class m2"
  end

  def m3
    puts "Child class m3"
  end  
end
ca = ClassAccess.new
ca.m1
#ca.m2
#ca.m3


# Alternative
class ClassAlterAccess
  def m1
  end
  def m2
  end
  def m3
  end
  def m4
  end
  public :m1
  protected :m2, :m3
  private :m4
end
