def add(a , b)
  puts "Adding #{a} + #{b}"
  return a + b
    a - b
end

puts "\nLet's do some math with just functions!"

age = add(30, 5)
puts "Age: #{age}"

####################################################

def sub(i , x)
  puts "subtract #{i} - #{x}"
  i - x
end

puts "\n lets do subtract "
j = sub(10 , 5)
puts "small: #{j}"

what = add(age ,j)

puts "Age = #{what}"
