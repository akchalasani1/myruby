
first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
# puts "Your 3rd favorite fruit is #{fruit3.to_i}"

print "Do you have any other favorite fruit? "
other_fruit = $stdin.gets.chomp
puts "You have a interesting 4th favorite fruit: #{other_fruit}"
