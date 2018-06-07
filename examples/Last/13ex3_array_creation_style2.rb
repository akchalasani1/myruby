# We will continue with the array object creation using the "new" method.

a1 = Array.new	# An empty array is created. We are supposed to fill it with data later on.

a2 = Array.new 3	# Here we create an array of three nil objects.

a3 = Array.new 6, "coin" # An array containing six "coin" strings is created.
# The first option is the size of the array. The second option is the object to fill the array.

a4 = Array.new [11]	# The fourth array will have one item.

a5 = Array.new ['test'] # The fifth array will have one item.

a6 = Array.new (5){|e|e*e}
# We create an array with 5 elements.
# Each element is created in the block. 0, 1, 2, 3, 4  => 0x0 = 0, 3x3=9, 4x4 = 16 [0, 1, 4, 9, 16]
# There we compute a sequence of squared integers. 0, 1, 2, 3, 4

# a square number or perfect square is an integer that is the square of an integer;[1] in other words,
# it is the product of some integer with itself. For example, 9 is a square number,
# since it can be written as 3 × 3.

puts [a1, a2, a3, a4, a5, a6].inspect

# We put all our arrays into one array.
# Arrays may be put into other arrays.
# Then we call the inspect method on the array.
# This will call the method on all its elements.
# The inspect method returns the string representation of the array.
# This is useful when we need to quickly check the contents of an array.
