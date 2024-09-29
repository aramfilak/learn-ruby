# Symbols
# Symbols are a special type of string used to represent names and labels in Ruby.
# They are immutable and unique.
# Symbols are used to represent things like method names, variable names, and keys in hashes.
# Symbols are created by placing a colon (:) before a string.
# Symbols are more efficient than strings because they are only stored once in memory.

# test if a symbol is unique

a = :my_symbol
b = :my_symbol
puts a.object_id == b.object_id # true

# Symbol class
# The Symbol class is used to represent symbols in Ruby.
# It has a number of methods that can be used to work with symbols.

# to_s
# The to_s method is used to convert a symbol to a string.

puts :my_symbol.to_s # "my_symbol"

# inspect
# The inspect method is used to convert a symbol to a string for debugging purposes.

puts :my_symbol.inspect # ":my_symbol"

# id2name
# The id2name method is used to convert a symbol to a string.

puts :my_symbol.id2name # "my_symbol"

# all_symbols
# The all_symbols method returns an array of all the symbols in the Ruby environment.

puts Symbol.all_symbols.inspect

