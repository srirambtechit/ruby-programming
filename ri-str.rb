#!/usr/bin/ruby
# coding: utf-8
# encoding: utf-8

names1 = [ 'ann', 'richard', 'william', 'susan', 'pat' ]
puts names1[0]; #ann
puts names1[4]; #pat

names2 = %w{ ann richard william susan pat }
puts names2[0] #ann
puts names2[4] #pat

puts names1[8] #print empty string
puts names2[8] #print empty string
