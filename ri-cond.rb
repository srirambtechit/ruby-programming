#!/usr/bin/ruby

unless ARGV.length == 2
	puts "Usage : ruby ri-cond.rb age exit_code"
	exit
end

age = ARGV[0]
age = age.to_i
puts "if-elsif-else statement"
puts "Entered age : #{age}"

if age < 10
	puts "Not qualified"
elsif age >= 10 and age <=20
	puts "Allowed if permission provided"
else
	puts "Allowed"
end

puts ""

puts "unless statement"
exit_code = ARGV[1]
puts "Entered exit_code : #{exit_code}"
print "Program executions is "

unless exit_code.to_i == 0
	print "failed"
else
	print "success"
end

puts ""


#while loop
puts "while loop"
var=0
while var < 10
	puts var.to_s
	var += 1
end

#Ternary operator
puts (var == 10) ? 'reached 10' : 'not reached 10'

age = 15
puts (12...19).include?(age) ? "teenager" : "not a teenager"

age = 23
person = (12...19).include?(age) ? "teenager" : "not a teenager"
puts person # => "not a teenager"

#Statment modifiers
participants = 300
puts "Enrollments will now stop" if participants > 2500

participants = 2501
puts "Enrollments will now stop" if participants > 2500

#Case Expression
year = 2000
leap = case
	   when year % 400 == 0 then true
	   when year % 100 == 0 then false
	   else year % 4   == 0
	   end
puts leap ? "#{year} is leap year" : "#{year} is not leap year"

