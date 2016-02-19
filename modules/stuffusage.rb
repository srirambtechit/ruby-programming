require_relative "stuff.rb" # loads Stuff module from stuff.rb

# $: is a system variable -- contains the path for loads

class D
 include Stuff # refers to the loaded module
 puts Stuff.mulCount(4)
end

d = D.new
puts d.addCount(3) # method addCount from Stuff
puts $:            # array of folders to search for load
$: << "/home/sriram/Learning/ruby/module/" # add a folder to the load path
puts $:
puts Stuff.mulCount(5) # Stuff class methods not called from D object
