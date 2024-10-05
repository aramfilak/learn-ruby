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
  # https://leetcode.com/problems/asteroid-collision/
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

end

leet = LeetCode.new

leet.asteroid_collision([10, 2, -5])


