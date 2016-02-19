# Marshal only serializes data structures. It can't 
# serialize Ruby code (like Proc objects), or 
# resources allocated by other processes (like file 
# handles or database connections). Marshal just 
# gives you an error when you try to serialize a file.

require_relative "ri-game"

File.open('game') do | f |
  @gc = Marshal.load(f)  # deserializing object
end

puts "#{@gc.power} #{@gc.type}"
@gc.weapons.each do | w |
  puts w
end
