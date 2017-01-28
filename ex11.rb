=begin  http://discourse.codenewbie.org/t/what-does-gets-chomp-do/559/2

gets.chomp.to_i is used for Fixnum

(gets and chomp) are two methods,  If you call gets,
ruby will wait for the user to input text in our case via the keyboard.
When you press enter, this is returned. In your code when your enter your name,
it sets the variable name to whatever your type in.

When you use just "gets" and press enter/return. You are actually adding a newline (\n)
to the end of your string, ruby is actually literally taking the enter and adding
it to the end of your input.

As for the chomp, this is a method that can be called on a string.
Keep in mind when you input your name, it's input as text. Text can accept the chomp75 method,
which will strip your text of any newlines, or carrige returns at the end..
-----------------------------------------------

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."
=end

print "Which country do you live in? "
country = gets.chomp
print "Which state? "
state = gets.chomp
print "Which city? "
city = gets.chomp
print "From Year?"
year = gets.chomp

puts "So, you live in #{country} at the state of #{state}, city is #{city} from #{year} "
