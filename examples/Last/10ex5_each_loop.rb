# Not that you should forget the for loop, as it's used in most of the popular programming languages.
# But in Ruby, the preferred way of doing a for-type of loop is to instead use the **(each) method.

# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# Note that there are parentheses around the range, e.g. (1..100).each{ ... as opposed to 1..100.each{ ...
# Ruby isn't smart enough to know that the 'each' method in the latter case belongs to the Range of 1..100,
# and not just to 100 the Fixnum, unless we put parentheses around (1..100)

for k in 1..5 do
	puts "#{k}. This is not as fun the * each * construct"
end

(1..5).each do |k|
	puts "#{k}. This is the Ruby preferred way of doing loops, when possible."
end

(1..5).each{|k| puts "#{k}. Curly braces make in even shorter."}

