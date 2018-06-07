#	Class methods are defined as singleton methods for class objects.
# Refer to the following program:

class Star
	def Star.x
		puts "Class method of class Star"
		puts self
	end
end

Star.x

# Output:
# Class method of class Star
# Star

# self inside a singleton method (a class method, in this case) is the object whose singleton method it is.

