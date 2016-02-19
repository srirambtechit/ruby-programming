module D
  def initialize(name)
    @name = name
  end
  def to_s
    @name
  end
end

module Debug
  include D
  # Methods that act as queries are often
  # name with a traling ?
  def who_am_i?
    "#{self.class.name} (\##{self.object_id}: #{self.to_s})"
  end
end

class Phonograph
  # the include statment simply makes a refernce to 
  # a named module If that module is in a sparate file,
  # use require to drag the file in before using include
  include Debug
  # ...
end

class EightTrack
  include Debug
  # ...
end

ph = Phonograph.new("West end blues")
et = EightTrack.new("Real pillow")
puts ph.who_am_i?
puts et.who_am_i?

