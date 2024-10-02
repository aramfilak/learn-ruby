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

# Example of dynamic array
class DynamicArray
  def initialize(size = 16)
    @size = size
    @array = Array.new(size)
    @length = 0
  end

  def push(element)
    if @size == @length
      expand
    end
    @array[@length] = element
    @length += 1
  end

  def insert(element, index)
    raise "Array index out of bounds" if index >= @length || index < 0

    if @size == @length
      expand
    end

    @length.downto(index + 1) do |i|
      @array[i] = @array[i - 1]
    end

    @array[index] = element
    @length += 1
  end

  def to_s
    @array.to_s
  end

  private

  def expand
    @size *= 2
    new_array = Array.new(@size)
    @array.each_with_index do |element, index|
      new_array[index] = element
    end
    @array = new_array
  end
end

require 'test/unit'

class TestDynamicArray < Test::Unit::TestCase
  def test_initialization
    array = DynamicArray.new
    assert_equal(16, array.instance_variable_get(:@size))
    assert_equal(0, array.instance_variable_get(:@length))
  end

  def test_push
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    assert_equal("[1, 2]", array.to_s)
    array.push(3)
    assert_equal("[1, 2, 3, nil]", array.to_s)
  end

  def test_expand
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    array.push(3)
    assert_equal(4, array.instance_variable_get(:@size))
    assert_equal("[1, 2, 3, nil]", array.to_s)
  end

  def test_insert
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    array.insert(3, 1)
    assert_equal("[1, 3, 2, nil]", array.to_s)
    assert_raise(RuntimeError) { array.insert(4, -1) }
  end
end

