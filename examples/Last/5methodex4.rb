# If we use the return keyword in between the definition body,
# the further lines of code after the return, will not get execute.

def just_assignment(number)
	 number + 3
	 return number * 5 # only this line get's executed and returns 30
	b = number - 4
	puts b
end

puts just_assignment(6)
