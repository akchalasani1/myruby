=begin
http://rubymonk.com/learning/books/1-ruby-primer/chapters/1-arrays/lessons/34-arrays-the-basics

[1, 2, 3, 4, 5].map { |i| i + 1 }
You'll notice that the output, [2, 3, 4, 5, 6] is the result of applying the code inside the curly brace to every single element in the array.
The result is an entirely new array containing the results.
In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block.
Go on, you try it. Multiply every element in the array below by 3 to get [3, 6 .. 15].

[1, 2, 3, 4, 5].map { |i| i * 3 }
output: [3, 6, 9, 12, 15]
creates an array [3,6,9,12,15] for an input array of [1,2,3,4,5] ✔

=end
puts "Adding every element in the array below by 1 to get [2, 3 .. 6]"
get_result = [1, 2, 3, 4, 5].map { |i| i + 1 }
print get_result
puts
puts
puts "Multiply every element in the array below by 3 to get [3, 6 .. 15]"
get_test = [1, 2, 3, 4, 5].map { |i| i * 3 }
print get_test
