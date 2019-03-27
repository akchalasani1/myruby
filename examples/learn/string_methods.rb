# Double Quotes String
name1 = %{Ruby is fun}
puts name1

name2 = %Q{Ruby is fun}
puts name2

# Single Quotes String
name3 = %q{Ruby if fun}
puts name3

# Length
name4 = "sunnyvale".length
puts name4

# Count
name5 = "HELLlO WORLD!".count('LO')  #case-sensitive
puts name5

puts "HELLlO".count('L') #case-sensitive


# Insert
puts "Hello".insert(3,'h15')

# Upcase
puts "hello".upcase

# Downcase
puts "HELLO".downcase

# Capitalize
puts "chalasani".capitalize

# Reverse
puts "Anil".reverse

# Split
name6 = "Hello, how are you?".split
p name6

p "H-e-l-l-o".split('-')

# Chop
name7 = "Batman"
puts name7.chop # temporary chop to the last character
puts name7 # replaced to original string
puts name7 == "Batma" # returns True

name8 = "Batman"
puts name8.chop! # permanent chop to the last character
puts name8
puts name8 == "Batma" # returns True

# Strip
p "Hello    ".strip

p "hello\t"
p "Hello\t".strip

p "hello\n"
p "hello\n".strip

# Chomp
p "hello\r".chomp # removes the last character in a string, only if it’s a carriage return or newline (\r, \n).

p "hello\n".chomp

p "hello\t".chomp # tabs and other whitespace remain intact when using `chomp`

p "hello    ".chomp

# To Integer
p "15".to_i + 15

# To String
p "25" + 15.to_s

# To Float
p 15 / 2.to_f

p 16 / 5.0.to_i

p (16.0.to_i / 3.0.to_i).to_f

p (16.0.to_i / 3.0.to_i)

# Sub
balloon = "Sammy has a balloon"
puts balloon.sub('has', 'had') # replaces has with had

# Gsub
balloon1 = "Sammy has a balloon, The balloon has a ribbon"
puts balloon1.gsub('has', 'had') # replaces all occurrence of has with had

# Index
puts "Sammy".index("a")  # a is at index 1

puts "Sammy".index("mm") # m is at index 2, It can also identify the index of the first character of a substring

p "Sammy".index('Fish') # returns nil

# Include?
puts "Sammy".include?('a')

puts "Sammy".include?("b")

# Slice
puts "Sammy".slice(0) # slice rest of the content after index 0. "S"

puts "Sammy".slice(1, 2) # slice front and back part of index 1 to 2."am"

puts "Sammy".slice(1..4) # slice index 0 and display index 1 to 4. "ammy"

puts "Sammy".slice(-1) # "y" single character from the end of the string with a negative index. -1 would let you access the last character of the string, -2 would access the second-to-last, and so on.

# Empty?

puts name9 = "".empty? # returns True

puts name10 = "Sammy".empty? # returns False


