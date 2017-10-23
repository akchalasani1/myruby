# Exercise 32: Loops and Arrays

=begin
Use a while-loop only to loop forever, and that means probably never.
This only applies to Ruby; other languages are different.
Use a for-loop for all other kinds of looping, especially if there is a fixed
or limited number of things to loop over.

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

Why is a for-loop able to use a variable that isn't defined yet?
The variable is defined by the for-loop when it starts,
initializing it to the current element of the loop iteration each time through.

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

=end

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

=begin
This first kind of for-loop below goes through a list in a more traditional style
found in other languages.
=end
for number in the_count
  puts "This is count: #{number}"
end

# the_count.each {|number| puts "This is count: #{number}"}
=begin
# switch between (..) is inclusive of the first and last element, (…) is exclusive of the last element.you will notice (..)inclusive will print 1 to 5 and (...)exclusive will print 1 to 4.

(1...5).each do |number|
puts number
end
=end

=begin
same as above, but in a more ruby style, this and the next one below are the preferred
way ruby for-loops are written.
=end
# lets add some new fruits to our fruits array.
fruits.push('bananas')
fruits.push('waterMelons')
fruits.push('strawBerries')

fruits.each do |anil|
  puts "A fruit of type: #{anil}"
end



=begin
also we can go through mixed lists too note this is yet another style. exactly like above
but a different syntax (WAY TO WRITE IT.)
=end
change.each {|i| puts "I got it #{i}"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the * end * of the list.
  elements.push(i)
end

# now we can print them too
elements.each { |i| puts "Element was: #{i}" }

the_count.each {|anil| puts "This is new each styple the_count: #{anil}"}
=begin
irb(main):006:0> a = ['a', 'b', 'c']
=> ["a", "b", "c"]
irb(main):006:0> a.push('d', 'e', 'f')
=> ["a", "b", "c", "d", "e", "f"]
=end
