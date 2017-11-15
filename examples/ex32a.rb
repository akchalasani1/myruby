=begin
Use a while-loop only to loop forever, and that means probably never.
This only applies to Ruby; other languages are different.
Use a for-loop for all other kinds of looping, especially if there is a fixed
or limited number of things to loop over.
=end

=begin
anil = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Ruby loops Style 1  (.each) with { ... }
anil.each {|i| puts "Variable (i) has: #{i}"}
=end

# we can also build arrays, first start with an empty one
  dogs = []
  puts "i am after empty array"
  # then use the range operator to do 0 to 5 counts
  # Ruby loops Style 2  (.each) with do...end
  # ('a'..'f').each do |a|
  (0..5).each do |a|
    puts "adding #{a} to the Dogs array on the top."

    # pushes the (a) variable on the *end* of the list
    # Try <<, which is the same as push, but << is an operator.
    # dogs.push(a) is same as dogs << a
    dogs.push(a)

  end

# now we can print them out too
dogs.each {|a| puts "Elements in the Dogs array was: #{a} "}

#dogs.each {|c| puts "This is new number: #{c}"}
