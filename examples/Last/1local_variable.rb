# Local Variable :- A local variable name must start with a lowercase letter (a-z) or underscore (_) .
# Local Variable Scope :-A local variable is only accessible from within the block of its initialization.

color = "Red"		# variable
	def method1
		color = 192		# local variable
		puts ("Color Value in method1: #{color}")
	end

	def method2
		color = 255		# local variable
		puts ("Color Value in method2: #{color}")
	end

method1
method2
puts ("Color Value outside method: #{color}")
