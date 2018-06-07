# Ruby has no class methods, but it has singleton methods attached to a particular object.
cat = String.new("cat")
def cat.speak
	'miaow'
end
puts cat.speak #=> "miaow"
puts cat.singleton_methods #=> ["speak"]

# def cat.speak has created a singleton method attached to the object cat.

# When you write class A, it is equivalent to A = Class.new

A = Class.new
def A.speak
	"I'm class A"
end
puts A.speak #=> "I'm class A"
puts A.singleton_methods #=> ["speak"]

# def A.speak has created a singleton method attached to the object A. We use to call it a class method of class A.

# When you write
class A
	def self.c_method
		'in A#c_method'
	end
end

# you create an instance of Class(*). Inside the class definition, Ruby sets self to this new instance of Class, which has been assigned to the constant A.
# Thus def self.c_method is equivalent to def cat.speak, that is to say you define a singleton method attached to the object self, which is currently the class A.

# Now the class A has two singleton methods, that we commonly call class methods.
puts A.singleton_methods

# (*) technically, in this case where A has already been created by A = Class.new, class A reopens the existing class. That's why we have two singleton methods at the end.
# But in the usual case where it is the first definition of a class, it means Class.new.

