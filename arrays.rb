# Arrays
# create an array
empty_array = []
array_of_numbers = [1, 2, 3, 4, 5]
array_of_strings = ["Ruby", "is", "awesome"]
mixed_array = [1, "Ruby", 2.0, "awesome", true , nil]
print mixed_array

# access elements
puts array_of_numbers[0]
puts array_of_numbers[1]


# modify elements
array_of_numbers[0] = 10
puts array_of_numbers[0]
puts array_of_numbers.inspect

# add elements
array_of_numbers << 6
puts array_of_numbers.inspect

array_of_numbers.push(7)
puts array_of_numbers.inspect

array_of_numbers.unshift(1)
puts array_of_numbers.inspect


# remove elements
array_of_numbers.pop
puts array_of_numbers.inspect

array_of_numbers.shift
puts array_of_numbers.inspect

array_of_numbers.delete_at(2)
puts array_of_numbers.inspect


# iterate over an array
array_of_numbers.each do |number|
  puts number
end


# iterate over an array with index
array_of_numbers.each_with_index do |number, index|
  puts "Index: #{index}, Number: #{number}"
end

# other methods
puts array_of_numbers.include?(3)
puts array_of_numbers.reverse.inspect
puts array_of_numbers.sort.inspect
puts array_of_numbers.join(", ")
puts array_of_numbers.size
puts array_of_numbers.empty?
puts array_of_numbers.first unless array_of_numbers.empty?
puts array_of_numbers.last unless  array_of_numbers.empty?
puts array_of_numbers.sample unless array_of_numbers.empty?
puts array_of_numbers.shuffle.inspect unless array_of_numbers.empty?

# multi-dimensional arrays
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matrix[0][0]
puts matrix[1][1]