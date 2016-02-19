# Open and read from a text file
# Note that since a block is given, file will
# automatically be closed when the block terminates

begin
  File.open('test.txt', 'r') do | f |
    while line = f.gets
	  puts line
	end
  end

  # Create a new file and write to it
  File.open('test1.txt', 'w') do | f |
    # use "" for two lines of text
	f.puts "Created by Sriram\nThank God!"
  end

rescue Exception => e
  # display the system generated error message
  puts e

end
