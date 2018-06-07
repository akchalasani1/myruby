# Few of the ways you can create class and instance methods and examples of what they would be used for.

# Class Methods
# Ruby is very flexible and as such it allows several ways to define a class method. T
# he following is a sample of the most commonly used ways.

# Way1 (POPULAR)
class Foo
	def self.bar
		puts 'class method'
	end
end

Foo.bar		# => "class method"


# Way2 (2nd POPULAR)
class Soo
	class << self
		def bar
			puts 'class method'
		end
	end
end

Soo.bar		# => "class method"


# Way3
class Zoo; end
def Zoo.bar
	puts 'class method'
end

Zoo.bar		# => "class method"


# The first way is my preference. When I see self.method_name it is immediately apparent to me that
# this is a class method. A lot of people use way #2 and it is pretty heavily used in Rails.

# There is nothing wrong with it, but when you have a class with a lot of class methods in a 
# class << self block, it can be hard to tell if the method is a class or instance method
# because it is defined the same (def bar). If this doesn’t make sense, feel free to use it
# for a while and you’ll probably run into what I’m talking about.

# Way 3 is not that common as far as I have seen and is more often a way to quickly add methods
# on the fly to a class. These are not the only three ways to define class methods,
# but they seem to be the ones that I see the most.

# So when would you use a class method? Class methods are for anything that does not deal
# with an individual instance of a class.
