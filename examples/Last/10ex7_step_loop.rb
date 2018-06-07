# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# This skips 2 rather than skipping 1, which is equivalent to doing i+=2 if you were using your classic 'for' loop (or a 'while' loop),
# so we end up printing out the following: 1 3 5 7 9

# Step

1.step(10, 2){|i| print "#{i},"}  # 1 is the starting number, and 2 in () is the every 2nd skip number


for x in (1..10).step(2)
	puts x
end

puts

(1..10).step(2) do |y|
	puts y
end
