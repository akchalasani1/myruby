# http://rubylearning.com/satishtalim/ruby_self.html
# Self - The current/default object

# The Golden Three Rules of Self
#	Use self when setting/getting instance attributes inside a class definition.
#	Use self to denote a method within the class definition as a class method.
#	Use self to reference the calling object within an instance method definition.

#	At every point when your program is running, there is one and only one self -
# the current or default object accessible to you in your program.
# You can tell which object self represents by following a small set of rules.

## Top level context

# The top level context is before you have entered any other context, such as a class definition.
# Therefore the term top level refers to program code written outside of a class or module.
# If you open a new text file and type:
x = 1
#	you have created a top level local variable x.

# if you type:
def m
end
# you have created a top level method - an instance method of Object (even though self is not Object).
# Top-level methods are always private. Ruby provides you with a start-up self at the top level.


# if you type:
puts self
#	it displays main - a special term the default self object uses to refer to itself.
# The class of the main object is Object.

