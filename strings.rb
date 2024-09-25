# Strings in Ruby
# Strings are objects in Ruby. Strings are sequences of characters.
# Strings are created by enclosing characters in single quotes or double quotes.
# Strings created with double quotes are more flexible and can contain escape sequences.
# Strings created with single quotes are more literal and cannot contain escape sequences.

single_quoted = 'This is a single quoted string'
double_quoted = "This is a double quoted string"

# String Interpolation
# String interpolation is a way to embed expressions in a string.
# String interpolation is done by using the #{} syntax.
# The expression inside the #{} is evaluated and the result is embedded in the string.
# String interpolation is only available in double-quoted strings.

def print_sum(a,b)
  puts "The sum of #{a} and #{b} is #{a + b}"
end

print_sum(10, 20)

# String Concatenation
# Strings can be concatenated using the + operator.
# Strings can also be concatenated using the << operator. (This modifies the original string)

c = "Ruby"
d = "awesome"
puts c << " " << d  # prints Ruby awesome
puts c + " " + d   # prints Ruby awesome awesome (original strings are not modified)

# String Methods
my_string = "hello"
puts my_string.upcase
puts my_string.downcase
puts my_string.reverse
puts my_string.length
puts my_string.empty?
puts my_string.include?("lo")
puts my_string.split("")
puts my_string.gsub("l", "L")

# multi-line strings
# use a heredoc to create multi-line strings
# a heredoc is a way to create multi-line strings in Ruby
def  print_cv(name,age,hobbies)
  puts <<-END_RUBY
Name: #{name}
Age: #{age}
Hobbies: #{hobbies.join(", ")}
END_RUBY
end
print_cv("Alice", 30, ["Reading", "Hiking", "Gardening"])

# Example of %q and %Q
multi_line_string_2 = %Q{
  This is another way
  to create a multiline
  string in Ruby.
}


# Are String Mutable?
# Strings are mutable in Ruby.
# This means that the contents of a string can be changed.
# Strings can be modified using methods like gsub, sub, and []=.
# Strings can also be modified using the << operator.

my_story = "I am a Ruby programmer"
my_story[5] = "n"

# But what happens in the memory
# The string "I am a Ruby programmer" is stored in memory.
# When we modify the string using []=, the string is modified in place.
# This means that the original string is modified in memory.

# Dose ruby use string pooling?
# Ruby does not use string pooling.
# This means that when we create two strings with the same content, they are stored as two separate objects in memory.
# Therefore, the two strings are not equal when compared using the equal? method.

# Dose not using string pooling mean that ruby does not reuse strings?
# Ruby does reuse strings in some cases.
# For example, when we use string interpolation, Ruby reuses the same string object for the interpolated string.
# But in general, Ruby does not reuse strings.