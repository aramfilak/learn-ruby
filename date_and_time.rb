# Date and Time
# Date and Time are a part of the Ruby Standard Library.
# You can use them to work with dates and times in Ruby.

# current time
puts Time.now

# specific time
puts Time.new(2021, 12, 25, 12, 0, 0)

# Date Arithmetic with Time
def calculate_my_age(day, month, year)
  dob = Time.new(year, month, day)
  now = Time.now
  age = now.year - dob.year
  age -= 1 if now.yday < dob.yday
  puts "You are #{age} years old"
end

calculate_my_age(25, 12, 1990) # You are 33 years old

# Formatting Time with strftime
# %d - day of the month
# %m - month
# %Y - year
# %H - hour
# %M - minute
# %S - second
german_time = Time.now.strftime("%d.%m.%Y %H:%M:%S")
puts german_time # 25.12.2021 12:00:00

# Working with Dates
# Date class used to work with date without time
require 'date'

current_date = Date.today
puts current_date

