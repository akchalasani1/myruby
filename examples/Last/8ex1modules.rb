# We use the "::" notation to access the constants located inside the module.
# Ruby Modules are similar to classes in that they hold a collection of Classes, Methods, Constants, and other Modules.
# Modules are defined much like classes are, but the module keyword is used in place of the class keyword.
# whenever you define a method in a module, you specify the module name followed by a dot and then the method name.
# -you reference a constant using the module name and two colons(::).
# Modules provide a namespace and prevent name clashes.
# Modules implement the mixin facility.
# The :: is a unary operator that allows: constants, instance methods and class methods defined within a class or module, to be accessed from anywhere outside the class or module.

# Unlike classes, you cannot create objects based on modules nor can you subclass them, instead, you specify that you want the functionality of a particular module to be added to the functionality of a class
# Modules is a good place to collect all your constants in a central location.

## Modules serve two purposes:
# First they act as namespace, letting you define methods whose names will not clash with those defined elsewhere. Ex: Sin (method in above and below examples)
# Second, they allow you to share functionality between classes - if a class mixes in a module, that module's instance methods become available as if they had been defined in the class. They get mixed in.

# Module defined in 8ex1modules.rb file

module Trig
	PI = 3.141592654

	# module methods 
	def Trig.sin(x)		#(module name followed by a dot and then the method name.)
		# ..
	end

	def Trig.cos(x)		#(module name followed by a dot and then the method name.)
		# ..
	end

	#just a Constant , should be in capial letters.
	NAME = "I am coming from 8ex1modules file 1, i am just a Constant" # VERY_BAD is a constant, you reference a constant using the module name and two colons.
end
