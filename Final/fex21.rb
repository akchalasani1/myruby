def add(a, b)
  puts "Adding #{a} + #{b}"
  return a + b
end

def substract(a, b)
  puts "Substract #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "Multiply #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "Division #{a} / #{b}"
  return a / b
end

puts "Let's do some math with functions!"

age = add(30, 5)
height = substract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it any way.
puts "Here is a puzzle."

what = add(age, substract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}, can you do it by hand?"
