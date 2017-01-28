# functions and Variables
# The variables in your function are not connected to the variables in your script.
# here's an exercise to get you thinking about this.
# we have given our function values, we can give it straight numbers. we can give it variables.
# we can give it math. we can even combine math and variables.
# example: In a way, the arguments to a fuction are kind of like our = character
# when we make a variable. if you can use = to name something, you can usually pass it to
# a function as an argument.
# ** Practical limit is limit though is about five arguments.
# ** You can call a function within a function.

def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n "
end

# * Script start printing from the puts statement in 22nd line,
# * since function is called after that in 23rd line.

# we call the function from top and passed numbers directly as arguments, back to top.
# so 20 and 20 get's displayed as part of the top 4 print statements.
puts "\nWe can just give the fuction numbers directly:" # \n to display this line in next line.
cheese_and_crackers(20, 30)


puts "OR, we can use variables from out script:"
# it is BAD to have same name for GLOBAL variables and fuction variables. avoid if possible.
# created a new GLOBAL variables amount_of_cheese and amount_of_crackers. these Variables
# are separate and live outside the function. these variables are passed to the function
# and temporary versions are made just for the function's run. when the function exists these
# temporary variables go away and everything keeps working.
amount_of_cheese = 10 # '' or "" not required for numbers
amount_of_crackers = 50
# we call the function from top and passed variables as arugment, back to top.
# so 10 and 50 get's displayed as part of the top 4 print statements.
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# we call the function from top and passed calculation as arugment, back to top.
# so 30 and 11 get's displayed as part of the top 4 print statements.
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# we call the function from top and passed variables as arugment + math, back to top.
# so 110 and 1050 get's displayed as part of the top 4 print statements.
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
