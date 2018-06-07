# Deleting pairs in hash:-

# There are several methods that can be used to loop through a Ruby hash.

naam = Hash.new
naam[1] = "David"
naam[2] = "Tory"
naam[3] = "Julia"
naam[4] = "Rebecca"
naam[5] = "Rena"

puts naam.delete_if{|k, v| k <= 3}
puts naam		# The method modifies the original hash.


# delete_if:- The methods delete pairs that return true for the given condition in the block. 
# In the above case, we delete all pairs, for which the key is lower or equal to 3.
# The method modifies the original hash.
