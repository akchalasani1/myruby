# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# Restarts this iteration of the most internal loop, without checking loop condition.

# Redo

for i in 0..5
	if i < 2 then
		puts "Value of local variable is #{i}"
		redo
	end
end
