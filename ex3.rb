# Math Operations

=begin

"Operations" means things like add, subtract, multiply, divide, squaring, etc.
If it isn't a number it is probably an operation.
Note: order of operations is PEMDAS (ex: please excuse my dear aunt sally)
which stands for Parentheses Exponents Multiplication Division Addition Subtraction.
P - Parentheses first ()
E - Exponents (ie Powers and Square Roots, etc.) - 2 power of 3 - 2 x 2 x 2 = 8
MD - Multiplication and Division (left-to-right)
AS - Addition and Subtraction (left-to-right)

The use of #{3+2} in the code above is how you insert Ruby computations into text strings.
You can put anything that is Ruby code between the { (left-bracket) and } (right-bracket)
characters and Ruby will run it and put the result there instead of those characters.

=end
puts "I will now count my chickens:"

puts "Hens: #{25 + 30 / 6}"


puts "Roosters: #{100 - 25 * 3 % 4}"


puts "Now I will count the eggs:"

# There are no fractions, only whole numbers.
# You need to use a "floating point" number
# which is a number with a decimal point, as in 10.5, or 0.89, or even 3.0.
# puts 3 + 2 + 1 - 5 + 4 % 2 - 0.1 / 4 + 6
 puts 3 + 2 + 1 - 5 + 4 % 2 - 1.0 / 4 + 6
#puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6


puts "Is it true that 3 + 2 < 5 - 7?"


puts 3 + 2 < 5 - 7


puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"


puts "Oh, that's why it's false."


puts "How about some more."

puts "Is 5 > -2 greater ? #{5 > -2}"
puts "Is 5 >= -2 greater or equal? #{5 >= -2}"
puts "Is 5 <= -2 less or equal? #{5 <= -2}"
