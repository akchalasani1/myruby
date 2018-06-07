#Class Variables :- Class variables are shared between a class, its subclasses, and its instances. The class variable name must start with '@@ ‘ character.
#Class Variables Scope :- These are basically global variables, but only to the class. Its value is shared across all of the same kind of instance of the class, and of classes that inherit from it.

class Test_class_variables
	@@test=123

	def self.test   # self ?
		@@test
	end

	def self.test=(value) # self ? and value?
		@@test = value
	end
end

class Test1 < Test_class_variables   # Test1(sub class), inheriting from parent class (Test_class_variables)
	# empty sub class
end

puts Test_class_variables.test
puts Test1.test

class Test2 < Test1		# Test2(sub class), inheriting from sub class (Test1)
	# empty sub class
end

puts Test_class_variables.test
puts Test2.test
