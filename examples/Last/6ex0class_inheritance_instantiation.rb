#	Difference between inheritance and instantiation.
# Inheritance and instantiation mean the same thing in Ruby as they do in every other object-oriented programming language.

#	< Inheritance is when a class inherits the methods of a parent class.
puts "Cat:"

class Mammal
	def breathe
		puts "inhale and exhale"
	end
end

class Cat < Mammal
	def speak
		puts "Meow"
	end
end



#	Instantiation is creating a new instance of a class.
rani = Cat.new
rani.breathe
rani.speak

puts

class Bird
	def preen
		puts "I am cleaning my feathers."
	end
	def fly
		puts "I am flying."
	end
end

puts "Penguin:"

class Penguin < Bird
	def fly
		puts "Sorry. I'd rather swim."
	end
end

p = Penguin.new
p.preen
p.fly

puts
puts "Crow:"

class Crow < Bird
	#
end

c = Crow.new
c.preen
c.fly
