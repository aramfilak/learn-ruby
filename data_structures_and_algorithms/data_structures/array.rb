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
    index = abs_index(index)

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

  def at(index)
    index = abs_index(index)
    @array[index]
  end

  def right_rotate
    if @length < 2
      return
    end
    last_element = at(-1)
    (@length - 1).downto(1) do |index|
      @array[index] = @array[index - 1]
    end
    @array[0] = last_element
  end

  def left_rotate
    if @length < 2
      return
    end
    first_element = @array[0]
    (0).upto(@length - 1) do |index|
      @array[index] = @array[index +1]
    end
    @array[@length - 1] = first_element
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

  def abs_index(index)
    if index < 0
      index += @length
    end
    raise "Array index out of bounds" if index >= @length || index < 0
    index
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
    assert_raise(RuntimeError) { array.insert(4, -6) }
  end

  def test_negative_index
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    assert_equal(2, array.at(-1))
    assert_equal(1, array.at(-2))
    assert_raise(RuntimeError) { array.at(-3) }
  end

  def test_rotate_right()
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    array.push(3)
    array.push(4)
    assert_equal(4, array.at(-1))
    array.right_rotate
    assert_equal(4, array.at(0))
    array.right_rotate
    assert_equal(3, array.at(0))
    assert_equal(4, array.at(1))
  end

  def test_rotate_left()
    array = DynamicArray.new(2)
    array.push(1)
    array.push(2)
    array.push(3)
    array.push(4)
    assert_equal(4, array.at(-1))
    array.left_rotate
    assert_equal(1, array.at(-1))
    assert_equal(2, array.at(0))
    array.left_rotate
    assert_equal(2, array.at(-1))
    assert_equal(3, array.at(0))
    array.left_rotate
    assert_equal(3, array.at(-1))
    assert_equal(4, array.at(0))

  end
end

