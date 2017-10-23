=begin
The formula becomes age + (( iq / 2) * weight – height).
We get 35 + ((50/2) * 180 – 74), which simplifies to 35 + ((25 * 180) – 74).
We can simplify further to 35 + (4500 – 74). Finally we get, 35 + 4426, which equals 4461.
=end

def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
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

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle."

what = add(age, subtract(multiply(weight, divide(iq, 2)), height))

puts "That becomes: #{what}. Can you do it by hand?"

=begin

4. Do the inverse. Write a simple formula and use the functions in the same way to calculate it.
My math formula: (((iq + 10) – 30) * 2) / 3
If we calculate this by hand, we get( ((50 + 10) – 30) * 2)/ 3,
which we can simplify to (60 – 30) * 2 / 3, and further into 30 * 2 / 3,
which should be 20! Let’s see if our script gets the same result.

=end

my_question = divide(multiply(2, subtract(add(iq, 10), 30)), 3)

puts "The answer to my question is: #{my_question}"
