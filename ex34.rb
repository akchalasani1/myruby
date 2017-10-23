=begin
We call these kinds of numbers "ordinal" numbers,
because they indicate an ordering of things.

This kind of number is a "cardinal" number and means you can pick at random,
so there needs to be a 0 element.

How does this help you work with arrays? Simple, every time you say to yourself,
 "I want the third animal," you translate this "ordinal" number to a "cardinal" number by subtracting 1.
 The "third" animal is at index 2 and is the penguin. You have to do this because you have spent your whole life using ordinal numbers,
 and now you have to think in cardinal. Just subtract 1 and you will be good.

puts "\n'bear', 'python', 'peacock', 'kangaroo', 'whale', 'dog'"
puts "\n1. (cardinal 0,1,2) The animal at 1, is 2nd animal in array and is a python. The 2nd animal in array is at 1 and is a python. "
puts "\n2. (ordinal 0,1,2,3) The Third animal is at 3-1 = 2(index) and is a peacock. The animal at index 2 is the 3rd animal and is a peacock."

Remember: ordinal == ordered, 1st; cardinal == cards at random, 0.
cardinal for ‘card at random’ (this is the 0 index) and ordinal for ‘being in order’.
=end

  def check_place(ordinal)
  animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'dog']

    if ordinal >= 1 && ordinal <= animals.length
      puts "The # #{ordinal} animal is %s and is at #{ordinal-1}." % animals[ordinal-1]

    else
      puts "You have entered a invalid number!"

    end
  end

check_place(1)
check_place(2)
check_place(3)
check_place(4)
check_place(5)
check_place(6)
