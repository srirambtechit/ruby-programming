class GameChar
  attr_reader :power, :type, :weapons
  def initialize(p, t, w)
    @power  = p
	@type   = t
	@weapons = w
  end
end
