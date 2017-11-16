 def while_loop(increment, numba)
   i = 0
   numbers = []
   while i < numba
     puts "At the top value of i is: #{i}"
     numbers.push(i)
     puts "Numbers now has:", numbers

     i += increment
     puts "At the bottom i is: #{i}"
   end

   puts "The Numbers:"
   numbers.each {|num| puts num}
 end

 while_loop(2, 3)
