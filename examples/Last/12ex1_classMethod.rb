# Class Methods
# Class methods are methods that are called on a class and instance methods are methods that are called on an instance of a class. Here is a quick example and then we’ll go into a bit more detail.
# Class methods can only be called on classes and instance methods can only be called on an instance of a class. 

class Foo
	def self.bar
		puts 'class method'
	end

	def baz
		puts 'instant method'
	end
end

Foo.bar		# => "class method"

Foo.baz		# => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => instance method
Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>

=begin
See the difference? bar is a class method, so calling bar on the Foo class works fine.
baz is an instance method, so calling baz on the Foo class raises a NoMethodError.
Then, on the next couple lines, we call both methods on an instance of Foo (Foo.new).

=end
