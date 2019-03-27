# Curly brace notation {} is another way of representing do and end.
def doubling_method(num)
  puts num * 2
end

for i in 1..3 do
  doubling_method(i)
end



puts "----------------"
# for loop

for k in 1..10 do
  puts "Numbers in K are: #{k}"
end



puts "----------------"
# each loop ## use each instead of for loop.
# Most RUBIEST prefer to use each loop

(1..5).each do |d|
  puts "#{d} Ruby preferred way of doing loops, when possible"
end


puts "----------------"
# # one liner

(1..5).each{|e| puts "#{e} Curly braces makes it even shorter."}




puts "----------------"
# upto loop ## use upto instead of for loop.

1.upto(3) do |f|
  puts f*2
end

puts "----------------"

# # one liner
1.upto(4){|g| puts g*2}

puts "----------------"

1.upto(5) {|a| puts "Numbers in A are: #{a}"}



puts "----------------"
# times loop

10.times do |b|
  puts "Numbers in B are: #{b}"
end

# Most RUBIEST prefer to use the braces for single-line blocks.
# # one liner
3.times{|c| puts c}



puts "----------------"
# while loop

x = 10
while x>0
  x-=1
  puts "This While loop will run #{x} more times."
end


# one liner

x = 10
puts "This one liner While loop will run #{x-=1} times" while x>0



puts "----------------"
# downto loop

5.downto(1) do |h|
  puts "down to 1 from 5 are: #{h}"
end


puts "----------------"


# # one liner
9.downto(5){|j| puts "down to 5 from 9 are: #{j}"}

20.downto(15){|p| puts p," "; sleep 1}  # with 1 second sleep. and space.

puts "----------------"
# step() loop  ## This skips 2 rather than 1, This is equivalent to doing i+=2
# if you were using classic for loop (or a while loop)

# # one liner
1.step(10, 2){|l| puts "This skips 2 rather than 1: #{l}"}



puts "----------------"
# some times we have an array and we don't want to loop over every value,
# but rather want to loop over every index, this is where the each-with-index
# iterator comes handy.

array = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
array.each_with_index{|m, n| puts "Array value: #{m},index: #{n}"}



puts "----------------"
# # Break with While loop

x = 0
while true do
  puts "Break a while loop if x > 5: #{x}"
  x += 1
  break if x > 5
end



puts "----------------"
# # BREAK with for loop

for x in 0..5
  if x > 3 then
    break
  end
  puts "Value of x in 0..5, break if greater than 3: #{x}"
end



puts "----------------"
# # NEXT with While loop
# Next statement is used to skip the rest of the current iteration.
# Terminates execution of a block if called with in a block.

## Can Next be used with while loop?
##
##



puts "----------------"
# # NEXT with for loop
# Next statement is used to skip the rest of the current iteration.
# Terminates execution of a block if called with in a block.

for x in 0..6
  if x < 3 then
    next
  end
  puts "Skips all iterations that are less than 3 in a range 0..6, Value of x is: #{x}"
end



puts "----------------"
# # REDO with for loop ## fall into infinity loop.
# sleep 1

=begin
for i in 0..5
  if i < 2 then
    puts "Value of local variable i is #{i; sleep 1}"
    redo
  end
end
=end



puts "----------------"
# # RETRY ## fall into infinity loop.
# Retry lets you retry a piece of code in a block.
# sleep 1

=begin
begin
    puts "Iteration"
    raise
rescue
  retry
end
=end



puts "----------------"
# # RETRY ## fall into infinity loop.
# Retry lets you retry a piece of code in a block.
# sleep 1

=begin
10.times do |i|
  begin
    puts "Iteration #{i; sleep 1}"

    raise if i>2
  rescue
    retry
  end
end
=end