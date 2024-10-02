# array in ruby
arr = Array.new(12)
puts arr.length
# array is fixed n consecutive memory locations
# array is a collection of elements
# cause ruby is a written in C, the array is behind the scenes a fixed size array


# if size is fixed (fixed mean you can not change the size) how ruby can append elements to the array?
# Ruby will create a new array with a new size and copy the elements from the old array to the new array
# the creation is as follows:
# 1. create a new array with a new size
# 2. copy the elements from the old array to the new array
# 3. assign the new array to the old array
# 4. the old array will be garbage collected
# this is called dynamic array
# the time complexity of appending an element to the array is O(n)

# is this efficient?
# no, it is not efficient, because it is O(n) time complexity
# but it is not a problem because the array will be updated only when the array is full
# for example if array size is 16 and the array is ful
# the new array size will be 16 * 2 = 32
# so we duplicate the size of the array
# and by duplicating the size of the array, the time complexity of appending an element to the array will be O(1)
# cause how many times the array will be updated ?
# not many times, only when the array is full

arr.each do |el|
  puts "no element" if el.nil?
end


