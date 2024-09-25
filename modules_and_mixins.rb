# Module
# a module is a collection of methods and constants.
# a module cannot be instantiated.
# a module can be included in a class. (mixins)
# a module can be used to group related methods together.
# a module can be used to add functionality to a class.
# a module
module MyModule
  def my_method
    puts "This is a module method"
  end
end


class MyClass
  include MyModule
end

my_object = MyClass.new
my_object.my_method


# extand a module
# extend is used to add module methods to a class
# or in other words, to add class methods to a class (static)
module ProgrammingLanguage
  def version
    puts "Ruby version 2.7.0"
  end
end

class Program
  extend ProgrammingLanguage
end

Program.version

# Modules as Namespaces
# modules can be used to create namespaces

module Animal
  class Caw
    def sound
      puts "Moo"
    end
  end

  class Horse
    def sound
      puts "Neigh"
    end
  end
end

caw = Animal::Caw.new
caw.sound

horse = Animal::Horse.new
horse.sound

# :: is used to access nested classes or modules or constants

# No Multiple Inheritance
# Ruby does not support multiple inheritance
# but it supports mixins which is a way to add functionality to a class
# mixins are implemented using modules, which is a collection of methods and constants
# example

module A

  def a
    puts "a"
  end
  def b
    puts "b"
  end
end

class ClassIncludeAMixin
  include A
end

c = ClassIncludeAMixin.new
c.a
c.b


# composition over inheritance
# the difference between mixins and inheritance is that mixins are used to add functionality to a class
# while inheritance is used to create an is-a relationship
module Flyable
  def fly
    puts "I can fly!"
  end
end

module Swimmable
  def swim
    puts "I can swim!"
  end
end

class Duck
  include Flyable
  include Swimmable
end

duck = Duck.new
duck.fly
duck.swim

