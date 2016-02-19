class MotorCycle
  def initialize(make, color)
    @make = make
    @color = color
  end

  def start_engine
    if @engine_start
      puts "Engine is already Running"
    else
      @engine_start = true
      puts "Engine is Idle"
    end
  end

end
