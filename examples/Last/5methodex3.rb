# We will use the return reserved word only when we have multiple operations/actions
# in the method definition and needs to return the same.

def just_assignment(number)
	c = number + 3
	a = number * 5
	b = number - 4
	return a,b,c
end

puts just_assignment(6)
