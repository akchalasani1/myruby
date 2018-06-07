# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# The break statement is used to terminate a block early.
# You can also terminate from a "while", "for" loops using a break.

# While loop with break and with if condition.

x = 0   # 0 is the starting value, try with 1
while true do
	puts x
	x+=1
	break if x>5
end

puts

# For loop with break and with if condition.

for x in 1..5  # breaks once x is greater than 3
	if x > 3
		break
	end
	puts "Value of x is: #{x}"
end
