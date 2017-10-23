=begin

Truthiness of objects in Ruby

The conditional statements if and unless can also use expressions that return an object that is not either true or false.

In such cases, the objects false and nil equates to false.
Every other object like say 1, 0, "" are all evaluated to be true.
=end

if 0
  puts "Hey, 0 is considered to be a truth in Ruby"
end
