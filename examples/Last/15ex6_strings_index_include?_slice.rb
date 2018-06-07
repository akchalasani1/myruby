# Index:-
# The "index" method returns the index of a character.
# It can also identify the index of the first character of a substring.
# And it returns nil if the character or substring doesn't exist:

puts "Sammy".index("a")  # returns: 1 saying "a" is at the index 1 in the string "sammy" # index starts at zero

puts "Sammy".index("mm") # returns: 2

puts "Sammy".index("Fish") # returns: Nil


# Include:-
# The "include?" method checks to see if a string contains another string.
# It returns true if the string exists and false if not:

# index starts at zero

puts "Sammy".include?("a")  # returns: true
puts "Sammy".include?("b")	# returns: false


# Slice:-
# The "slice" method lets you grab a single character or a range of characters.
# Passing a single integer returns the character at that index. 

# Passing two integers, separated by a comma,
# tells slice to return all the characters from the first index to the last index, inclusive.

# The slice method also accepts a range, such as 1..4, to specify the characters to extract:

# We can also access a single character from the end of the string with a negative index. 
# -1 would let you access the last character of the string, -2 would access the second-to-last,
# and so on.

# index starts at zero

puts "Sammy".slice(0)  # returns: "S"

puts "Sammy".slice(1, 2)		# returns: "am"

puts "Sammy".slice(1..4)  # returns: "ammy"

puts "Sammy".slice(-1)  # returns: "y"
