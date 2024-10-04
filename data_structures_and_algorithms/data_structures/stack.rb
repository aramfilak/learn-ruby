# Stack
# A stack is a collection of objects that are inserted
# and removed according to the last-in, first-out (LIFO) principle.

# stack leet code problems

class LeetCode

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

end




