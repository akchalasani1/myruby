# Besides for, the most commonly seen loop keyword throughout programming languages is while.
# This executes a code block while a given condition evaluates to true.

# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

x = 10
while x > 0  # for the 1st time x will be 10, since 10 is greater than 0 it executes the code block.
	x -= 1  # try with -= 0 fall's in to infinity loop. (x)10 - 1 = 9. so x will be 9
puts "This loop will run #{x} more times"
end
