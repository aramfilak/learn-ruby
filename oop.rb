# Object Oriented Programming in Ruby

# class definition

class MyRubyClass

end

# class instantiation

my_ruby_object = MyRubyClass.new

# class definition with constructor

class MyRubyClassWithConstructor

  def initialize(name)
    @name = name
    puts "your name is #{name}"
  end

end

# class instantiation with constructor
# output: your name is John
MyRubyClassWithConstructor.new("John")

# Accessors and Setters
# Accessors are methods that allow you to read the value of an instance variable.
# Setters are methods that allow you to set the value of an instance variable.
# like java getters and setters, they provide encapsulation

class Rectangle

  def initialize(length, width)
    @length, @width = length, width
  end

  # accessor methods
  def length
    @length
  end

  def width
    @width
  end

  # setter methods
  def length=(value)
    if value < 0
      raise "Length can't be negative"
    end
    @length = value
  end

  def width=(value)
    if value < 0
      raise "Width can't be negative"
    end
    @width = value
  end

  # this method is called when the object is printed automatically
  def to_s
    "Length: #{@length}, Width: #{@width}"
  end

end

my_rectangle = Rectangle.new(10, 20)
puts my_rectangle
puts my_rectangle.length
puts my_rectangle.width
my_rectangle.length = 30
my_rectangle.width = 40
puts my_rectangle

# Using Symbols with attr_accessor
# attr_accessor is a Ruby method that creates accessors and setters for instance variables.
# It is a shortcut for creating accessor and setter methods.
# It takes a symbol as an argument and creates accessor and setter methods for the instance variable with that name.

class Rectangle

  attr_accessor :length, :width

  def initialize(length, width)
    @length, @width = length, width
  end

  def to_s
    "Length: #{@length}, Width: #{@width}"
  end

end

my_rectangle = Rectangle.new(10, 20)
puts my_rectangle
puts my_rectangle.length
puts my_rectangle.width
my_rectangle.length = 30
my_rectangle.width = 40
puts my_rectangle

# Using Symbols with attr_reader and attr_writer
# attr_reader is a Ruby method that creates accessor methods for instance variables.
# attr_writer is a Ruby method that creates setter methods for instance variables.
# They are shortcuts for creating accessor and setter methods.
# They take a symbol as an argument and create accessor and setter methods for the instance variable with that name.

class Circle
  attr_accessor :radius
  attr_reader :area

  def initialize(radius)
    @radius = radius
  end

  def area
    "#{Math::PI * @radius * @radius} cm^2"
  end
end

my_circle = Circle.new(3)
puts "Radius: #{my_circle.radius}"
puts "Area: #{my_circle.area}"

# Class Methods (Static Methods)
class BMW
  @@no_of_cars = 0

  def initialize(model, year)
    @model = model
    @year = year
    @@no_of_cars += 1
  end

  def self.no_of_cars
    @@no_of_cars
  end

end

bmw1 = BMW.new("M3", 2019)
bmw2 = BMW.new("M5", 2020)
puts "Total number of BMW cars: #{BMW.no_of_cars}"

# Access Control
# Ruby provides three levels of access control for methods: public, protected, and private.
# Public methods can be called by anyone.
# Protected methods can be called by any instance of the defining class or its subclasses.
# Private methods can only be called within the defining class.
# By default, all methods in Ruby are public.
# To define a protected method, use the protected keyword.
# To define a private method, use the private keyword.
# To define a public method, no keyword is needed.

class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  def area
    width * height
  end

  private

  def width
    @width
  end

  def height
    @height
  end

  protected

  def print_area
    puts "Box area is: #{area}"
  end
end

# Class Inheritance
# Ruby supports single inheritance
# < is used to inherit from a class
# super keyword is used to call the parent class constructor

class BigBox < Box
  def print_big_box_area
    print_area # Protected method can be called within subclass
  end
end

box = Box.new(10, 20)
big_box = BigBox.new(30, 40)

# box.print_area # => Error: protected method `print_area' called
big_box.print_big_box_area # => Box area is: 1200

# Freezing Objects
# Ruby provides a method called freeze that prevents objects from being modified.

class Person

  def initialize(id, name)
    @id = id
    @name = name
  end

  def to_s
    "ID: #{@id}, Name: #{@name}"
  end
end

person = Person.new(1, "Alice")
person.freeze
puts person
puts person.frozen? # true

# Clas Constants

class Game
  VERSION = 1.0
end

puts Game::VERSION

# Create Objects using allocate
# The allocate method is used to create a new object without calling the initialize method.
# It is useful when you want to create an object without initializing it.
# use cases:
# mmm... actually, I think is useless like unless and until 🦦

class Street
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

street = Street.allocate
puts street.name == nil # true
