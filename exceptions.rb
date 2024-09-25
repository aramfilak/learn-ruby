# Exceptions
# Ruby has an Exception class that makes it easy to handle errors that your program may encounter.
# The Exception class is the parent class for all exceptions in Ruby.
# Ruby has many built-in exception classes, such as NoMethodError and RuntimeError.
# You can also define your own exception classes by subclassing Exception.


# The raise keyword is used to raise an exception.
def divide(a, b)
  raise "Division by zero error" if b == 0
  a / b
end
# Handling exceptions
# The begin keyword is used to start a block of code that may raise an exception.
# The rescue keyword is used to catch exceptions.
def rescue_exception
  begin
    raise "This is an exception"
  rescue => e
    puts "An exception occurred: #{e}"
  end
end

# Using rescue, else and ensure
# The else keyword is used to run code when no exceptions are raised.
# The ensure keyword is used to run code regardless of whether an exception is raised or not. is like finally in other programming languages.



def divide(a, b)
  result = a / b
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
else
  puts "The result is #{result}"
ensure
  puts ":-) Happy coding!"
end

# Custom exceptions
# You can create custom exceptions by subclassing the Exception class.

class CustomError < StandardError
  def initialize(msg="My default message")
    super
  end
end

def raise_custom_error
  raise CustomError, "This is a custom error message"
end

# Handling exceptions
# The begin keyword is used to start a block of code that may raise an exception.
# The rescue keyword is used to catch exceptions.
def rescue_exception
  begin
    raise "This is an exception"
  rescue => e
    puts "An exception occurred: #{e}"
  end
end

# Using rescue, else and ensure
# The else keyword is used to run code when no exceptions are raised.
# The ensure keyword is used to run code regardless of whether an exception is raised or not. is like finally in other programming languages.
def divide(a, b)
  result = a / b
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
else
  puts "The result is #{result}"
ensure
  puts ":-) Happy coding!"
end

# Custom exceptions
# You can create custom exceptions by subclassing the Exception class.
class CustomError < StandardError
  def initialize(msg="My default message")
    super
  end
end

def raise_custom_error
  raise CustomError, "This is a custom error message"
end

# Handling exceptions
# The begin keyword is used to start a block of code that may raise an exception.
# The rescue keyword is used to catch exceptions.
def rescue_exception
  begin
    raise "This is an exception"
  rescue => e
    puts "An exception occurred: #{e}"
  end
end

# Using rescue, else and ensure
# The else keyword is used to run code when no exceptions are raised.
# The ensure keyword is used to run code regardless of whether an exception is raised or not. is like finally in other programming languages.
def divide(a, b)
  result = a / b
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
else
  puts "The result is #{result}"
ensure
  puts ":-) Happy coding!"
end

# Custom exceptions
# You can create custom exceptions by subclassing the Exception class.
class CustomError < StandardError
  def initialize(msg="My default message")
    super
  end
end

def raise_custom_error
  raise CustomError, "This is a custom error message"
end

def rescue_the_custom_error
  begin
    raise_custom_error
  rescue CustomError => e
    puts "An exception occurred: #{e}"
  end
end

rescue_the_custom_error

# handling multiple exceptions
def rescue_multiple_exceptions
  begin
    raise "This is an exception"
  rescue ZeroDivisionError => e
    puts "ZeroDivisionError: #{e}"
  rescue CustomError => e
    puts "CustomError: #{e}"
  rescue => e
    puts "An exception occurred: #{e}"
  end
end