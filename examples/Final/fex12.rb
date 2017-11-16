print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "What is your deposit amount $ "
anil = gets.chomp
number = anil.to_f

interest = 0.10 * number
puts "10% for your deposited amount is = #{interest}"
