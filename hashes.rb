# Hashes
my_hash_map = {
  "name" => "John",
  "age" => 25,
  "city" => "New York",
  "country" => "USA",
}

# Accessing hash values
puts my_hash_map["name"]


# Using the newer symbol notation
new_hash = { name: "Alice", age: 25, city: "Wonderland" }

# Accessing hash values
puts new_hash[:name]

# Adding a new key-value pair
new_hash[:country] = "UK"
# or
new_hash.store(:country, "UK")
# or
new_hash["country"] = "DEU"

# print the hash
puts new_hash


# Iterating over a hash
new_hash.each do |key, value|
  puts "#{key}: #{value}"
end

# remove a key-value pair

new_hash.delete(:country)
# or
new_hash.delete("country")
# or


# Hash methods
puts new_hash.keys
puts new_hash.values
puts new_hash.length
puts new_hash.empty?
puts new_hash.has_key?(:name)
puts new_hash.has_value?("Alice")
puts new_hash.include?(:name)
puts new_hash.member?(:name)

# Merging hashes
hash1 = { a: 100, b: 200 }
hash2 = { b: 254, c: 300 }

puts hash1.merge(hash2)

# Default value, return a default value if the key is not found
hash3 = Hash.new("Key not found")
puts hash3[:key]