#		Ruby Strings:-

# Ruby has many built in methods to work with strings.
# Strings in Ruby by default are mutable and can be changed in place
# or a new string can be returned from a method.

# General Delimited Strings
puts %{Ruby is fun.} # equivalent to "Ruby is fun."

puts %Q{Ruby is fun.} # equivalent to " Ruby is fun."

puts %q[Ruby is fun.] # equivalent to a 'single-quoted' string

# Length :-
# The ".length" property returns the number of characters in a string including white-space.
puts "RubyString".length # displays result as 10
puts "Ruby Test".length # displays result as 9

# Count:-
# The ". count"  method counts how many times a specific character(s) is found in a string .
# This method is case-sensitive.
puts "HELLO".count('L') # returns: 2

puts "HELLO WORLD!".count('LO')  # returns: 5
