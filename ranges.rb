# Ranges
# Ranges are a way to express a sequence.
# A range has a start point and an end point.
# Ranges created using the .. operator have an inclusive end point.
# Those created using the ... operator exclude the end point.

inclusive_range = 1..5
puts "inclusive_range from 1 to 5"
puts "start from #{inclusive_range.max}"
puts "end at #{inclusive_range.min}"

puts "----------------"

exclusive_range = 1...5
puts "exclusive_range from 1 to 5"
puts "start from #{exclusive_range.max}"
puts "end at #{exclusive_range.min}"

# convert range to array
rang_array = (1..5).to_a
puts rang_array.inspect

# iterate over a range
(1..5).each do |i|
  puts i
end

# Checking range membership
puts "Is 3 in the range 1..5? #{(1..5) === 3}"
puts "Is 6 in the range 1..5? #{(1..5) === 6}"
puts "Is 6 in the range 1...5? #{(1...5).include? 6}"
puts "Is 5 in the range 1...5? #{(1...5).include? 5}"
puts "Is 5 in the range 1..5? #{(1..5).cover?(5)}"

# using ranges with letters
puts ('A'..'Z').to_a.inspect

# using date with ranges
require 'date'
start_date = Date.new(2021, 1, 1)
end_date = Date.new(2021, 1, 5)
(start_date..end_date).each do |date|
  puts "Date is in the range of start date: #{start_date} and end date: #{end_date} is #{date}"
end

# ranges with case statement
score = 87
result = case score
         when 0..40
           "Fail"
         when 41..60
           "Pass"
         when 61..70
           "Pass with Merit"
         when 71..100
           "Pass with Distinction"
         else
           "Invalid Score"
         end
puts result