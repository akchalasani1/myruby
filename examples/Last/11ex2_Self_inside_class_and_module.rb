#	Self inside class and module definitions

# In a class or module definition, self is the class or module object.
puts
class Sun
	puts "Just started with class Sun"
	puts self
	puts
	module Moon
		puts "Nested module Sun::Moon"
		puts self
		puts
	end
	puts "Back to outer level of Sun"
	puts self
	puts
end

