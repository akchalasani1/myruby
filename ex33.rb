# Exercise 33: While Loops

=begin
##############################################################################
A for-loop can only iterate (loop) "over" collections/ array of things.
A while-loop can do any kind of iteration (looping) you want.
However, while-loops are harder to get right, and you normally
can get many things done with for-loops.

The main reason people don't understand loops is because they can't follow the "jumping"
that the code does. When a loop runs, it goes through its block of code,
and at the end it jumps back to the top. To visualize this,
put puts statements all over the loop printing out where in the loop Ruby is running
and what the variables are set to at those points. Write puts lines before the loop,
at the top of the loop, in the middle, and at the bottom.
Study the output and try to understand the jumping that's going on.
##############################################################################

What they do is simply do a test like an if-statement,
but instead of running the code block once, they jump back to the "top" where the while is,
and repeat. A while-loop runs until the expression is false.

##############################################################################
You should know that Ruby has three kinds of code blocks you need to read.
You have the kind that if-statements use, where code is started after the if,
and the block of code is ended with end. You then have two kinds for .each style blocks.
Either you use do ... end or { |i| puts "I got it #{i}" } 

Here’s a basic example of a multi-line block:
[1, 2, 3].each do |n|
  puts "Number #{n}"
end
It’s called a multi-line block because it’s not inline,
not because it’s got more than one line of code (which is not the case here).
The same example can be written with an inline block.
[1, 2, 3].each {|n| puts "Number #{n}"}
Both versions will print numbers 1, 2 and 3 in order.
The little n letter you see between the pipes (|n|) is called a block parameter 
and it’s value in this case is going to be each of the numbers in turn,
in the order they are listed inside the array. So for the first iteration,
the value of n will be 1, then for the second iteration, the value will be 2, and then 3.

To avoid these problems, there are some rules to follow:

1. Make sure that you use while-loops sparingly. Usually a for-loop is better.
2. Review your while statements and make sure that the boolean test will become false
at some point.
3. When in doubt, print out your test variable at the top and bottom of the while-loop
to see what it's doing.

Use a while-loop only to loop forever, and that means probably never.
This only applies to Ruby; other languages are different.
Use a for-loop for all other kinds of looping, especially if there is a fixed
or limited number of things to loop over.

=end

i = 0
numbers = []

# loop will run till i is 6, when i is 6 loop will come out.
while i < 6
  puts "At the top i is #{i}" # displays the current value of i
  numbers.push(i) # i value will be pushed to empty array numbers.
  puts "Numbers now: ", numbers  # prints the elements in array. puts is used twice with , numbers.

  # IN WHILE-LOOP value need to be incremented
  i += 1 # we are incrementing the value of i by adding + 1 in every iteration.
  puts "At the bottom i is #{i}" # displays the value of i after the increment.
end

puts "The numbers: "

# Remember you can write this in two other ways.
numbers.each {|num| puts num }

=begin
numbers.each do |numba|
puts numba
end

# below is the traditional style
for numba in numbers
puts numba
end
=end
