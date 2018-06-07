#	Chop:-
#	The ".chop" method removes the last character of the string.
# A new string is returned, unless you use the .chop! method which mutates the original string.

puts "Anila".chop 	# returns Anil

type = "Batman"
puts type.chop		# returns Batma
puts type == "Batma"		# returns flase

type = "Batman"
puts type.chop!		# returns Batma  # chop! method which mutates the original string. permanently changes the orginal string.
puts type == "Batma" # returns true


#	Strip:-
# The ".strip" method removes the leading and trailing whitespace on strings,
# including tabs, newlines (\t, \n).
puts "Hello	".strip 	# returns: Hello
puts "Anil Chalasani \t\n".strip 	# returns: Anil Chalasani
puts "		Hello".strip
puts "\tAnil Chalasani\r\n".strip


# Chomp:-  Removing Trailing Newlines and Other Characters
# The ".chomp" method removes the "last character" in a "string",
# only if it’s a "carriage return or newline (\r, \n)".
# This method is commonly used with the "gets" command to remove "returns" from user input.

# The Easiest Way to Remove Unwanted New Lines

puts "hello\r".chomp 	# returns: hello
puts "hello\t".chomp  # returns: hello  #because tabs and other whitespace remain intact when using `chomp`
puts "Tom Hanks\r\n".chomp # => "Tom Hanks"


