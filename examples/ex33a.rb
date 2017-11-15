def while_loop(numba)
  i = 0
  numbers = [] # empty array
  while i < numba
    puts "At the top value of i is #{i}"
    numbers.push(i) #values each at a time will be pushed into numbers empty array at the top.

    i += 1
    puts "Numbers now:", numbers # numbers displays the values getting added to numbers array.
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
  numbers.each {|num| puts num}
end

while_loop(3)
while_loop(6)
