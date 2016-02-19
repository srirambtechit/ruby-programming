#First without accessor methods
class Song
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def name
    @name
  end

  def artist
    @artist
  end
end

song = Song.new("Brazil", "Ivete Sangalo")
puts song.name
puts song.artist

#Now, with accessor methods
class Song
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  attr_reader :name, :artist # create reader only
  # For creating reader and writer method
  # attr_accessor :name
  # For creating writer method
  # attr_writer :name

end

song = Song.new("Brazil", "Ivete Sangalo")
puts song.name
puts song.artist
