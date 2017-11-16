=begin

Start from the inside and work out.
Divide iq by 2. Multiply that by weight. Subtract that from height. Add that to age.
In general, with nested parentheses, you always start from the innermost.

The purpose of parentheses in this type of formula is to manage the order that the operations occur,
Note: order of operations is PEMDAS (ex: please excuse my dear aunt sally)
(standard order is multiplication and division,left to right, and then addition and subtraction, left to right).
=end

def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract( a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "\nLet's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway

puts "\nHere is the puzzle."

# putting raw number's as per the study drill
# what = 74 - 50 / 2 * 180 + 35

#what = (height - iq / 2 * weight + age)
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

puts "\nmake your own assignment from the functions."

# Finally, do the inverse. Write out a simple formula and use the functions in the same way to calculate it.
test_this = add(2, 4) + subtract(200, 187) + multiply(height, weight) + divide(weight, age)
# 6 + 13 + 13320 + 4
puts "looks like we get: #{test_this}"

=begin
puts "\nmodify the parts of the functions. Try to change it on purpose to make another value."
age = add(38, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(180, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"
=end
