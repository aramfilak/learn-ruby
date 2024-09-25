# while loop
i = 0
while i < 10
  puts "i is #{i}"
  i += 1
end

# while modifier
# i = 0
# puts "i is #{i}" while i < 10
begin puts "i is #{i}" end while i < 10

# until loop
i = 0
until i == 10
  puts "i is #{i}"
  i += 1
end

# for loop
for i in 0..5
  if i === 3
    next
  end
  puts "i is #{i}"
end
# next keyword is like continue in other programming languages

# each loop
(0..5).each do |i|
  puts "i is #{i}"
end

# loop loop
i = 0
loop do
  i += 1
  next if i < 3
  puts "i is #{i}"
  break if i >= 5
end