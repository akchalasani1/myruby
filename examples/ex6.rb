# types_of_people  is a variables
# 10 is value assigned to variable using =
# Strings can contain any number of variables that are in your Ruby script.

# '' - variable can't be called into single quotes with #{} into other variable ex: greeting = 'Hello, #{name}' . since it expects only characters as a string not other variable.
# "" - In double quotes you can write a string as well as call other variable with #{}.

types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = 'binary'
do_not = "don't" # we can't use single quotes since there is one single quote inside already.
# we cannot also use escape sequence in single quotes, to do do_not = 'don\'t'
# string binary and do_not be put inside the below string
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# string x, y put inside the below string
puts "I said: #{x}."
puts "I also said: #{y}."

hilarious = true
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = 'This is the left side of...'
e = 'a string with a right side.'

puts w + e
