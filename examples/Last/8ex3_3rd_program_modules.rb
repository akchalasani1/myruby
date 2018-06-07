# Ruby require Statement:-
# The require statement is similar to the include statement of C and C++ and the import statement of Java.
# If a third program wants to use any defined module, it can simply load the module files using the

# Ruby require statement −
# Syntax -    require filename
# Here, it is not required to give .rb extension along with a file name.

# Here we are using $LOAD_PATH << '.' to make Ruby aware that included files must be searched in the current directory.
# If you do not want to use $LOAD_PATH then you can use require_relative to include files from a relative directory.

# IMPORTANT − Here, both the files contain the same function name ex: sin (method).
# So, this will result in code ambiguity while including in calling program but modules avoid this code ambiguity and we are able to call appropriate function using module name.


require './8ex1modules.rb'
require './8ex2modules'

y = Trig.sin(Trig::PI/4)		#you reference a constant using the module name and two colons.
wrongdoing = Moral.sin(Moral::VERY_BAD)		#you reference a constant using the module name and two colons.

y = Trig::PI/4
puts y

wrongdoing = Moral::VERY_BAD
puts wrongdoing


puts Trig::NAME, Moral::TEST		# VERY_BAD is a constant, you reference a constant using the module name and two colons.
