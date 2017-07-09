# $ruby ex13.rb first 2nd 3rds

# you should use $stdin.gets.chomp from now on since the action get.chomp has
# problems with ARGV.

# If they give your script inputs on the command line, then you use ARGV.
# If you want them to input using the keyboard while the script is running, then use gets.chomp.
# command line arguments are strings? yes they come in as strings, even if you typed numbers
# on command line. use .to_i to convert them just like with gets.chomp.to_i .

fruit1, fruit2, fruit3 = ARGV
puts "Your 1st favorite fruit is #{fruit1}"
puts "Your 2nd favorite fruit is #{fruit2}"
puts "Your 3rd favorite fruit is #{fruit3.to_i}"



print "Do you have any other favorite fruit? "
other_fruit = $stdin.gets.chomp
#other_fruit = $stdin.gets.chomp.to_i  # for numbers to get caliculation.
puts "You have a interesting 4th favorite fruit : : #{other_fruit}"
