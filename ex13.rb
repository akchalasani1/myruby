=begin
we will cover one more input method you can pass variables to a script.
(script being another name for your .rb files). you know how you type ruby ex13.rb
to run the ex13.rb file? well the ex13.rb part of the command is called an "argument."
we will write a script that also accepts arguments.

ARGV is the "argument variable" very standard name is programming. this variable holds
the arugments you pass to your ruby script when you run it.

Line 1 "unpacks" ARGV "argument variable" so that, rather than holding all the arguments,
it gets assigned to three variables you can work with: first, second and third.
This may look strange, but "unpack" is probably the best workd to describe what it does.
It just says, "Take whatever is in ARGV, uppack it, and assign it to all of these variables
on the left in order." After that we just print them out like normal.
=end

# run ruby script with command line argument, EVERY TIME when you see ARGV in any script.
# ex: ruby ex13.rb first 2nd 3rd
# ex: ruby ex13.rb CAR BUS VAN
# ex: ruby ex13.rb Train Ship Flight
first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
