=begin
[1, 2, 3, 4, 5].map { |i| i + 1 }
You'll notice that the output, [2, 3, 4, 5, 6] is the result of applying the code inside the curly brace to every single element in the array.
The result is an entirely new array containing the results.
In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block.
Go on, you try it. Multiply every element in the array below by 3 to get [3, 6 .. 15].

[1, 2, 3, 4, 5].map { |i| i * 3 }
output: [3, 6, 9, 12, 15]
creates an array [3,6,9,12,15] for an input array of [1,2,3,4,5] ✔

=end

def length_finder(input_array)
  input_array.map {|element| element.length}
  #  input_array.map {|i| i.length} # gives same result


end

input_array = length_finder(['Ruby','Rails','C42'])
print input_array