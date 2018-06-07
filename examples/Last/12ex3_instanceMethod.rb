# Instance Methods
# Instance methods are a bit more simple. Here are a few common ways that instance methods are defined.
# Class methods can only be called on classes and instance methods can only be called on an instance of a class. 

# Way1 (POPULAR)
class Foo
	def baz
		puts 'instance method'
	end
end

Foo.new.baz # "instance method"


# Way2 (2nd POPULAR)
class Zoo
	attr_accessor	:baz
end

zoo = Zoo.new
zoo.baz = 'instance method'
puts zoo.baz


# Way 3
class Too; end

too = Too.new
def Too.bar
	puts 'instance method'
end
Too.bar # "instance method"

