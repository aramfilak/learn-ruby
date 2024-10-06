# Stack
# A stack is a collection of objects that are inserted
# and removed according to the last-in, first-out (LIFO) principle.

# stack leet code problems

class LeetCode
  # 1047. Remove All Adjacent Duplicates In String
  # https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string
  # @param [String] s
  # @return [String]
  def remove_duplicates(s)
    stack = []
    s.each_char do |ch|
      if stack.last === ch
        stack.pop
      else
        stack.push(ch)
      end
    end
    stack.join
  end

  # 20. Valid Parentheses
  # https://leetcode.com/problems/valid-parentheses
  # @param [String] s
  # @return [Boolean]
  def is_valid(s)
    stack = []
    open_p = {
      ")" => "(",
      "}" => "{",
      "]" => "[",
    }

    s.each_char do |ch|

      if open_p.has_value?(ch)
        stack.push(ch)
      elsif open_p.has_key?(ch) && open_p[ch] == stack.last
        stack.pop
      else
        return false
      end

    end
    stack.empty?
  end

  # 735. Asteroid Collision
  # https://leetcode.com/problems/asteroid-collision
  # @param [Array<Integer>] asteroids
  # @return [Array<Integer>]
  def asteroid_collision(asteroids)
    stack = []

    asteroids.each do |ast|
      if ast.negative?
        while !stack.empty? && stack.last.positive?
          if stack.last < ast.abs
            stack.pop
          elsif stack.last == ast.abs
            stack.pop
            ast = 0
            break
          else
            break
          end
        end
        stack.push(ast) if ast != 0 && (stack.empty? || stack.last.negative?)
      else
        stack.push(ast)
      end
    end
    stack
  end

  # 856. Score of Parentheses
  # https://leetcode.com/problems/score-of-parentheses
  # @param [String] s
  # @return [Integer]
  def score_of_parentheses(s)
    stack = []
    score = 0

    s.each_char do |ch|
      if ch == '('
        stack.push(score)
        score = 0
      else
        score = stack.pop + [2 * score, 1].max
      end
    end

    score
  end
end

# LinkedList Node
class Node
  attr_accessor :next, :value
  attr_writer :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

class LinkedListStack
  attr_accessor :length

  def initialize()
    @head = Node.new(nil)
    @length = 0
  end

  def push(value)
    if !@head.value
      @head.value = value
    else
      @item = Node.new(value)
      @item.next = @head
      @head = @item
    end
    @length += 1
  end

  def pop
    value = @head.value
    @head = @head.next
    @length -= 1
    value
  end

  def peek
    @head.value
  end

  def is_empty
    @head.value.nil?
  end

  def print
    current = @head
    while current
      puts "=> #{current.value}"
      current = current.next
    end
  end

end

require 'test/unit'

class LinkedListStackTest < Test::Unit::TestCase

  def setup
    @stack = LinkedListStack.new
  end

  def test_initialize
    assert_equal(0, @stack.length)
    assert_nil(@stack.peek)
    assert_true(@stack.is_empty)
  end

  def test_push
    @stack.push(1)
    assert_equal(1, @stack.peek)
    assert_equal(1, @stack.length)
    assert_false(@stack.is_empty)

    @stack.push(2)
    assert_equal(2, @stack.peek)
    assert_equal(2, @stack.length)
  end

  def test_pop
    @stack.push(1)
    @stack.push(2)
    assert_equal(2, @stack.pop)
    assert_equal(1, @stack.length)
    assert_equal(1, @stack.peek)

    assert_equal(1, @stack.pop)
    assert_equal(0, @stack.length)
    assert_nil(@stack.peek)
    assert_true(@stack.is_empty)
  end

  def test_peek
    assert_nil(@stack.peek)
    @stack.push(1)
    assert_equal(1, @stack.peek)
    @stack.push(2)
    assert_equal(2, @stack.peek)
  end

  def test_is_empty
    assert_true(@stack.is_empty)
    @stack.push(1)
    assert_false(@stack.is_empty)
    @stack.pop
    assert_true(@stack.is_empty)
  end

  def test_print
    @stack.push(1)
    @stack.push(2)
    @stack.push(3)
    assert_output("=> 3\n=> 2\n=> 1") { @stack.print }
  end

end

