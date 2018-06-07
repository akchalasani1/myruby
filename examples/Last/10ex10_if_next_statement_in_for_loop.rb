# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# The next statement is used to skip the rest of the current iteration.
# Terminates execution of a block if called within a block.

# Next Statement

# Following example skip the current iteration in a for loop :

for x in 1..6
	if x < 3 then # "next" skips all iteration that are less than 3
		next
	end
	puts "Value of x is: #{x}"
end
