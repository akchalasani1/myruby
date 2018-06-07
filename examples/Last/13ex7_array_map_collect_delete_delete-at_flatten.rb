#	map() : map method iterates over an array applying a block to each element of the array and returns a new array with those results.

a = [1, 2, 3, 4]
a.map { |num| puts num * 2 } # try **,  3 to the power of 3 # displays values in array "a * multiplied by 2" temporarily, that's why bottom line still displays values from original array a = [1, 2, 3, 4].
# the original object is unchanged unless you use map!)

puts

puts a.inspect #

puts

a.map!{|n| n + n} # permanently changes the original values in array by adding same value to it self, from now every time you use array "a" will only display array with modified added values.
puts a.inspect

puts

# Collect():- The collect method is an alias to map - they do the same thing.

b = [1, 2, 3, 4]
b.collect {|num| puts num ** 3}

puts

puts b.inspect

puts

b.map!{|num| num ** 3}
puts b.inspect

puts

# delete_at ():- delete_at method can be helpful if you'd like to eliminate the value at a certain index from your array.
# You'll want to be careful with this one, because it modifies your array destructively.
# Once you call this method, you are changing your array permanently.

c = [1, 2, 3, 4, 5]
puts c.inspect

puts

c.delete_at(1)  # index 1 in array, that will be the location of value 2, will be deleted permanently.
puts c.inspect

puts

# delete() :- sometimes you will know the value that you want to delete, but not the index.
# In these situations you will want to use the delete method.
# The delete method permanently deletes all instances of the provided value from the array.

my_pets = %w{cat dog bird cat snake}
my_pets.delete("cat") # delete's the value "cat" where ever it is in the array, but not based on the index.
puts my_pets.inspect

puts

# flatten() :- flatten method can be used to take an array that contains "nested arrays" and create a one-dimensional array.

numbo = [1, 2, [3, 4, 5], [6, 7]]
puts numbo.flatten.inspect
