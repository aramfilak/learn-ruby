# single block
[1, 2, 3].each { |n| puts n }
# multiple blocks
[1, 2, 3].each do |n|
  puts n * 2
end
# yield keyword
# yield is used to call a block
# yield can be used to pass parameters to a block
def method_with_block
  puts "Before block"
  yield
  puts "After block"
end

method_with_block { puts "Inside block" }


# check if a block is given

def method_with_block_check
  puts "Before block"
  if block_given?
    yield
  else
    puts "No block given"
  end
  puts "After block"
end

method_with_block_check


# Calling a Block with block.call
# its alternative to yield
# & is used to convert a block to a proc
# proc is an object that holds a block
# &arg should be last argument
def method_with_block_call(&block)
  puts "Before block"
  block.call if block
  puts "After block"
end

method_with_block_call { puts "Inside block" }


# usage
def sum(array)
  total = 0
  array.each { |number| total += number }
  yield(total) if block_given?
  total
end

sum([1, 2, 3]) { |total|  puts "Total: #{total}" }

# how each method works
def my_each(array)
  for el in array
    if block_given?
      yield(el)
    else
      puts "No block given"
    end
  end
end

my_each([1,2,3,4]) {|num| puts num * 2}
