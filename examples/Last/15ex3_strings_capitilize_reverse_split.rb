# Capitilize:-

# The ".capitalize" method make the first letter in a string uppercase and the rest of the string lowercase.

puts "HELLO".capitalize 	# returns: Hello

puts "HELLO, HOW ARE YOU?".capitalize 	# returns: Hello, how are you?

puts "-HELLO".capitalize 	# returns: -hello

puts "1HELLO".capitalize # returns: 1hello


#	Reverse:-
# The ".reverse" method reverses the order of the characters in a string.

puts "Hello World!".reverse		# returns: !dlroW olleH


# Split:-
# The ".split" takes a "string" and splits it into an "array", then returns the array.
# The default method splits the string based on "whitespace",
# unless a different "separator" is provided (see second example).

puts "Hello, how are you?".split # try in "irb" that displays  => ["Hello,", "how", "are", "you?"]
# returns:
# Hello
# how
# are
# you?

puts "H-e-l-l-o".split('-') 	# "separator" is provided # irb  => ["H", "e", "l", "l", "o"]
# returns:
# H
# e
# l
# l
# o

