#	Create two arrays:

numbers = [0.4, 23.0, 23.3, 0.4, 5.2]
dwarfs = %w[Doc Sleepy Bashful Grumpy Happy Sneezy Dopey]

# check for specific values in each arrays:
puts numbers.include?(23.0)
puts dwarfs.include?('Donner')

# find the location of specific values in each array:
puts dwarfs.index('Grumpy') # index starts at zero
puts numbers.index(0.4)
puts numbers.rindex(0.4)  # repeated values. rindex finds the last found value.
puts dwarfs.rindex('Papa Smurf') # If the value isn’t in the array, as is the case with Papa Smurf, nil is returned.

# Re-order and display the arrays 
puts numbers.sort.inspect # sort method will arrange a list of numbers in increasing order and arrange strings in alphabetical order.
puts dwarfs.sort.inspect
puts dwarfs.sort.reverse.inspect # reverse method is applied to the sorted dwarfs array to turn it into a reverse-alphabetical order list.
# In both cases, inspect is called so that the array is printed more succinctly (rather than over multiple lines, as would ordinarily be the case).

# Cut some values from an array
puts dwarfs.length  # displays the length on the values in an array, in this case 7 in "dwarfs"
puts dwarfs.inspect
oops = dwarfs.slice!(2, 2) # slice (removes) two values from index value two ex: in this case ["Bashful", "Grumpy"] will be removed
puts oops.inspect
puts dwarfs.inspect
puts dwarfs.length

puts

# Return only the unique values in an array
puts numbers.uniq.inspect # displays uniq values temporarily, that's why bottom line still displays 5 values from original "numbers" array.
puts numbers.length	# displays 5 values from the original "numbers"
puts numbers.uniq.length		# (numbers.uniq! => permanently deletes the duplicates)

puts

puts numbers.uniq!.inspect # permanently deletes the duplicates, from now every time you use "numbers" will only display 4 values.
puts numbers.length

# The uniq method returns an array of unique values (without impacting the original array).
# With the numbers array, which has two 0.4 values in it, the returned unique array contains one less element.
# To confirm this, the length method is called on both versions of the array.
