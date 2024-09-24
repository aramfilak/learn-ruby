# There are 5 types of variables in Ruby:^

# 1. Instance variables
# _______________________________________________________
# Instance variables begin with @.
# Uninitialized instance variables have the value nil
class Customer

  def initialize (id, name ,address)
    @cust_id = id
    @cust_name = name
    @cust_addr = address
  end

  def display_details
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end

end

cust1 = Customer.new("123", "johne", "Bonn")
cust1.display_details
# 2. Class variables
# _______________________________________________________
# begin with @@
# must be initialized before they can be used in method definitions
# are shared among descendants of the class (static)
class Customer
  @@number_of_customers = 0

  def initialize(id, name, address)
    @cust_id = id
    @cust_name = name
    @cust_addr = address
  end

  def display_details
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end

  def total_no_of_customers
    @@number_of_customers += 1
    puts "Total number of customers: #@@number_of_customers"
  end
end

cust2 = Customer.new("1", "Alice", "123 Maple Street")
cust3 = Customer.new("2", "Bob", "456 Oak Avenue")

cust2.total_no_of_customers
cust3.total_no_of_customers

# 3. Global Variables
# _______________________________________________________
# begin $
# Uninitialized global variables have the value nil
$global_variable = 10

class ExampleClass1
  def print_global
    puts "Global variable in ExampleClass1 is #$global_variable"
  end
end

class ExampleClass2
  def print_global
    puts "Global variable in ExampleClass2 is #$global_variable"
  end
end

class1obj = ExampleClass1.new
class1obj.print_global
class2obj = ExampleClass2.new
class2obj.print_global

# 4. Local variables
# _______________________________________________________
# start with lowercase or _
id = "42"
name = "James Bond"
address = "Cayman Islands"
puts id + "_" + name + "_"+ address


# 5. Constants
# _______________________________________________________
# A constant has a name starting with an uppercase character
# It should be assigned a value at most once.
class Example
  VAR1 = 100
  VAR2 = 200

  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

object = Example.new
object.show



# Literals
# _______________________________________________________
puts 'escape using "\\"'
puts 'That\'s right'
puts "Multiplication Value : #{24*60*60}"

# Interger Numbers
# -230 to 230 are objects of class Fixnum and objects outside this range are of class Bignum
123          # Fixnum decimal
1_234        # Fixnum decimal with underline
-500         # Negative Fixnum
0377         # Octal
0xff         # Hexadecimal
0b1011       # Binary
?a           # Character code for 'a'
12345678901234567890  # Bignum

# Floating Numbers
123.4      # Floating point value
1.0e6      # Scientific notation
4E20       # Dot not required
4e+20      # Sign before exponential

# Array, literals are created by placing a comma-separated series of object references between square brackets
ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
  puts i
end

# Hashes, literals are created by placing a list of key/value pairs between braces, with either a comma or the sequence => between the key and the value
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end