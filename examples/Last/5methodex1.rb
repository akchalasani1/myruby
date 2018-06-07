# Return a value from the Method

# return reserved word is not required in order to return something from a method.
# In Ruby, every method returns the evaluated result of the last line that is executed.

def arthamatic_operation(number)
	return number + 3
end

returned_value = arthamatic_operation(4)
puts returned_value
