#!/usr/bin/ruby

class Dummy
  def method_missing(m, *args, &block)
    puts "There is no method called #{m} here -- please try again."
  end
end

Dummy.new.anything
