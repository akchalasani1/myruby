#Instance Variables :- Instance variables begin with an at sign (@) and can be referenced only within class methods. 
#Instance Variables Scope :- Instance variables are shared across all methods for the same object, and a variable of the same name outside of the class won’t raise an error.

class Test_instance
	@color = "Red"
	puts "\ncolor: #{@color}"

	def method1
		@color = 192
		puts ("\nColor Value in method1: #{@color}")
	end

	def method2
		@color = 255
		puts ("Color Value in method2: #{@color}")
	end

	def final_reslt
		puts ("#{@color}")
	end
end



result = Test_instance.new		# result is a new object, created from parent class "class Testinstance".
result1 = Test_instance.new  # Instance variables are shared across all methods for the same object. result but not result1
result3 = Test_instance.new # like this you can create many objects from class.

puts result.method1
puts result.method2
puts result.final_reslt		# value of @color in "final_reslt" method, will be carried over from method2, instance variable @color = 255.

color = "Red"
puts "color: #{color}"
