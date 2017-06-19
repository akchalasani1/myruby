=begin
prompting to enter number with gets.chomp.to_i
gets.chomp.to_i it will convert to an integer.
we can also save what gets.chomp returns, and call .to_i on that, as we did with
number = another.to_i below. this statement means nothing but, user input value is stored into variable. 

=end
print "Give me a number: "
number = gets.chomp.to_i
#number = number.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."


print "what is you deposit amount $ "
#gets.chomp.to_f is used for Float.
number = gets.chomp.to_f

interest =  0.10 * number
puts "10% for your deposited amount is #{interest}"
