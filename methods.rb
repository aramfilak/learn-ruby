# simple methods
def simple_method
  puts "This is a simple method"
end

# method with parameters
def method_with_parameters(param1, param2)
  puts "First parameter: #{param1}"
  puts "Second parameter: #{param2}"
end

# method with default parameters
def method_with_default_parameters(param1 = "default1", param2 = "default2")
  puts "First parameter: #{param1}"
  puts "Second parameter: #{param2}"
end

# call the methods if no params
simple_method
# call the method with parameters
method_with_parameters("param1", "param2")

# return value from a method
# no need to use the return keyword
# the last statement is the return value
# if no return value is specified, nil is returned
def sum
  a = 10
  b = 20
  a + b
end
puts sum

# return multiple values from a method
def sum_and_difference(a, b)
  sum = a + b
  difference = a - b
  [sum, difference]
end
result = sum_and_difference(10, 5)
puts "Sum: #{result[0]}"
puts "Difference: #{result[1]}"

# return multiple values from a method
def calculate
  x = 10
  y = 20
  z = 30
  [x, y, z]
end

result = calculate
puts result

# variable number of arguments
# *args is used to pass a variable number of arguments to a method
def variable_arguments(*args)
  puts args.inspect
  args.each do |arg|
    puts arg
  end
end

variable_arguments(1, 2, 3, 4, 5)


# combine variables with args
def print_cv(name, age, *hobbies)
  puts "Name: #{name}"
  puts "Age: #{age}"
  puts "Hobbies: #{hobbies.join(", ")}"
end

print_cv("Alice", 30, "Reading", "Hiking", "Gardening")


# Method defined outside of a class are public by default
def global_method
  puts "This is a global method"
end

class Example
  # Public method (default)
  def public_method
    puts "This is a public method"
  end

  # Private method
  private
  def private_method
    puts "This is a private method"
  end
end

# Calling the global method
global_method

# Creating an instance of Example
example = Example.new

# Calling the public method
example.public_method

# Trying to call the private method will result in an error
# example.private_method # Uncommenting this line will raise an error

# Class Methods
# Class methods are methods that are called on the class itself, not on an instance of the class.
class Car
  # Class method
  def self.description
    puts "This is a car class"
  end
end

# Call the class method
Car.description
