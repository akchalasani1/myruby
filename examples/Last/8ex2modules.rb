# Module defined in 8ex2modules.rb file
# module Moral
# 	VERY_BAD = 0
# 	BAD = 1
# 	def Moral.sin(badness)				# (module name followed by a dot and then the method name.)
#   # ...
# 	end
# end

module Moral
	VERY_BAD = 0		# VERY_BAD is a constant, you reference a constant using the module name and two colons.
	BAD = 1		# BAD is a constant, you reference a constant using the module name and two colons.

	# module methods 
	def Moral.sin(badness)		# (module name followed by a dot and then the method name.)
		# ...										# Ex: Sin method defined in 8ex1modules and ex2modules
														# (Module act as namespace, letting you define methods whose names will not clash with those defined elsewhere. )
	end

	TEST = "I am coming from 8ex2modules file 2, i am just a Constant" # VERY_BAD is a constant, you reference a constant using the module name and two colons.
end
