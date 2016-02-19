#!/usr/bin/ruby
=begin  
  If you call rand, you'll get a float greater than or equal to 0.0 
  and less than 1.0. If you give it an integer parameter (by calling rand(5) ), 
  you will get an integer value greater than or equal to 0 and less than 5 
=end
# The program below makes three lists of words, and then 
# randomly picks one word from each of the three lists 
# and prints out the result 
word_list_one = ['24/7', 'multi-Tier', '30,000 foot', 'B-to-B', 'win-win', 'front-end', 
                 'web-based', 'pervasive', 'smart', 'six-sigma', 'critical-path', 'dynamic'] 
word_list_two = ['empowered', 'sticky', 'value-added', 'oriented', 'centric', 'distributed', 
                 'clustered', 'branded', 'outside-the-box', 'positioned', 'networked', 'focused', 
                 'leveraged', 'aligned', 'targeted', 'shared', 'cooperative', 'accelerated'] 
word_list_three = ['process', 'tipping-point', 'solution', 'architecture', 'core competency', 
                   'strategy', 'mindshare', 'portal', 'space', 'vision', 'paradigm', 'mission']  
list1_len = word_list_one.length
list2_len = word_list_two.length
list3_len = word_list_three.length

phrase1 = rand(list1_len)
phrase2 = rand(list2_len)
phrase3 = rand(list3_len)

puts word_list_one[phrase1] + " " + word_list_two[phrase2] + " " + word_list_three[phrase3]

