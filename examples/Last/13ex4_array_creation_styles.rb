# Various ways to create arrays in Ruby
# We create three arrays of integers, strings, and decimals

integers = [1, 2, 3, 4, 5]

animals = %w(donkey dog 384 cat dolphin eagle 555)

weights = Array.new
weights<<4.55<<3.22<<3.55<<8.55<<3.23

puts integers.inspect
puts animals.inspect
puts weights.inspect


