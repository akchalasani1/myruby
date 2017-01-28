=begin
Anil Chalasani is my name ;)
Start from the inside and work out.
Divide iq by 2. Multiply that by weight. Subtract that from height. Add that to age.
In general, with nested parentheses, you always start from the innermost.

The purpose of parentheses in this type of formula is to manage the order that the operations occur,
if you need that to be different than standard order (standard order is multiplication and division,
 left to right, and then addition and subtraction, left to right).
=end

def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract( a, b)
  puts "SUBSTRACTING #{a} - #{b}"
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

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway

puts "Here is the puzzle."

what = 24 + 34 / 100 - 1023

#what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
