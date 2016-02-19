require 'logger'
$LOG = Logger.new("log_file.log", "monthly")
$LOG.level = Logger::ERROR

def divide(numerator, denominator)
  $LOG.debug "Numerator: #{numerator}, denominator: #{denominator}"
  begin
    result = numerator/denominator
  rescue Exception => e
    $LOG.error "Error in division!: #{e}"
	result = nil
  end
  result
end

puts divide(4, 2)
puts divide(43, 5)
puts divide(53, 0)
puts divide(81, 9)
