# Mixins in Ruby:-

# Before going through this section, we assume you have the knowledge of Object Oriented Concepts.

# When a class can inherit features from more than one parent class,
# the class is supposed to show multiple inheritance.

# Ruby does not support multiple inheritance directly but Ruby Modules have another wonderful use.
# At a stroke, they pretty much eliminate the need for multiple inheritance,
# providing a facility called a mixin.

# Mixins give you a wonderfully controlled way of adding functionality to classes.
# However, their true power comes out when the code in the mixin starts to interact
# with code in the class that uses it.

# Example :-

	module A

		def a1
			#
			puts "Anil"
		end

		def a2
			#
			puts "Kumar"
		end

	end

	module B

		def b1
			#
			puts "Chalasani"
		end

		def b2
			#
			puts "Live in C.A"
		end

	end

	class Sample

		include A
		include B

		def s1
			#
			puts "U.S.A"
		end

	end

	snapple = Sample.new
	snapple.a1
	snapple.a2
	snapple.b1
	snapple.b2
	snapple.s1

=begin

Module A consists of the methods a1 and a2.
Module B consists of the methods b1 and b2.

The class Sample includes both modules A and B.
The class Sample can access all four methods, namely, a1, a2, b1, and b2.

Therefore, you can see that the class Sample inherits from both the modules. ex: snapple = Sample.new
Thus, you can say the class Sample shows multiple inheritance or a mixin.

=end
