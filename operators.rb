# Comparison Operators
## Equal  => ==
# Not Equal => !=
# Greater than => >
# Less than => <
# Greater than or equal to => >=
# Less than or equal to => <=

# Combined Comparison Operator => <=> (spaceship operator)  It returns:
# 0 if first operand equals the second,
# 1 if the first operand is greater than the second
# -1 if the first operand is less than the second.

# Case Equality Operator => ===
# It is used to test equality within a when clause of a case statement.
# (1..10) === 5 # returns true
# (1..10) === 15 # returns false
# this means that 5 is in the range of 1 to 10 but 15 is not.
# other examples
# Integer === 42 # returns true , cause 42 is an integer
# Integer === 'fourtytwo' # returns false, cause 'fourtytwo' is not an integer

# .eql? method
# It returns true if the two operands are equal and of the same type.
# 1.eql?(1.0) # returns false
# 1.eql?(1) # returns true

# equal? method
# .equal? method returns true if the two operands are the same object.
# or in other words, they have the same object id.
# x = "text"
# y = "text"
# puts x.equal? y # returns false


# Arithmetic Operators
# Addition => +
# Subtraction => -
# Multiplication => *
# Division => /
# Modulus => %
# Exponentiation => **

# Assignment Operators
# =, +=, -=, *=, /=, %=, **=

# Parallel Assignment
# a, b, c = 10, 20, 30
# useful for swap two variables
# a, b = b, a


# Logical Operators
# Logical AND => &&
# Logical OR => ||
# Logical NOT => !
# Logical XOR => ^
# and, or, not are also available, but they have lower precedence than &&, ||, and !.
# this means that &&, ||, and ! are evaluated first.

# Ternary Operator
# condition ? true : false

# Range Operators
# 1..10 # inclusive range, 1 to 10
# 1...10 # exclusive range, 1 to 9

# defined? operator
# It is used to determine if a variable is defined.
# defined? variable # returns nil if variable is not defined
# defined? puts # returns method if puts is defined
foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)


# Dot Operator and Double Colon
#  . is used to call methods on an object
#  :: is used to call a constant or a method on a class or module
# Math::PI # returns the value of PI
puts Math::PI
# or the :: can be used to access nested classes or modules
module Foo
  module Bar
    class Baz
    end
  end
end
Foo::Bar::Baz.new
