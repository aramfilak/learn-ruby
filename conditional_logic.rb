# if...else statement
temperature = 30

if temperature >  30
  puts "It's very hot"
elsif temperature <= 30 && temperature > 20
  puts "It's nice outside"
else
  puts "It's cold"
end

# if modifier
logging_enabled = true
puts "Logging is enabled" if logging_enabled

# unless statement
# unless is the opposite of if, it executes code when the condition is false.
logging_disabled = false
unless logging_disabled
  puts "Logging is enabled"
end

# unless modifier
puts "Logging is enabled" unless logging_disabled

# case statement (Switch statement)
# case statement is used to test multiple conditions.
# It is similar to switch statement in other programming languages.
# case statement uses === operator to compare the when clause with the case expression.
# case expression
# when value1
#   # code
# when value2
#   # code
# else
#   # code
# end
day = "Monday"
case day
when "Monday"
  puts "Start of the week"
when "Tuesday"
  puts "Second day of the week"
when "Wednesday"
  puts "Middle of the week"
when "Thursday"
  puts "Almost there"
when "Friday"
  puts "End of the week"
else
  puts "Weekend"
end

# case expression can also be used with ranges
score = 85
case score
when 0..40
  puts "Fail"
when 41..60
  puts "Pass"
when 61..80
  puts "Good"
when 81..100
  puts "Excellent"
else
  puts "Invalid score"
end

# case expression can also be used with classes
# case expression
# when class1
#   # code
# when class2
#   # code
# else
#   # code
# end
obj = "hello"
case obj
when String
  puts "It's a string"
when Numeric
  puts "It's a number"
else
  puts "It's something else"
end


