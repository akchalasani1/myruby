# The following loops all do the same thing:

# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

for k in 1..10 do
	puts "1Number: #{k}"
end

puts

10.times do |k|
	puts "2Number: #{k}"
	# times will start at 0, so on the 10th iteration, k is equal to 9. try #{k+1}
end

puts

1.upto(10){|k| puts "3Number #{k}"}

# The curly braces notation {} is another way of representing do and end.
# Most Rubyists prefer to use the braces for single-line blocks

3.times{|x| puts x}
# times will start at 0, so on the 3rd iteration, x is equal to 2. try puts x+1
