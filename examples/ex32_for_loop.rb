# Ruby for Statement
=begin

Use a while-loop only to loop forever, and that means probably never.
This only applies to Ruby; other languages are different.
Use a for-loop for all other kinds of looping, especially if there is a fixed
or limited number of things to loop over.

=end

# Traditional Old Loop
fruit = [1, 'apple', 2, 'grape']
for i in fruit
  puts "Traditional style: value of local variable fruit is #{i} "
end

for i in 1..3
  puts "Traditional style: value of local variable i is #{i} "
end

#######################################################################

# Ruby Style
(1..3).each do |i|
  puts "Ruby Style loop: value of local variable i is #{i} "
end

# Ruby Style
num = [1, 2, 3]  # Array

num.each {|i| puts " Ruby Style for loop - value of local variable i is #{i} "}

# Ruby Style
# Ruby while Statement
i = 1
num = 3

while i <= num
  puts("Inside the loop i = #{i}")
  i += 1 # incrementer
end

# Ruby Style
# Ruby while Statement with $ GLOBAL SCOPE
$i = 4  # with $ GLOBAL SCOPE
$num = 6

while $i <= $num
  puts("Inside the loop i = #$i")
  $i += 1 # incrementer
end
