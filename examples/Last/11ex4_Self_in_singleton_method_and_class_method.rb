#	Self in singleton-method and class-method definitions
#	Singleton methods - those attached to a particular object can be called by only one object.
# When a singleton method is executed, self is the object that owns the method, as shown below:

obj = Object.new
def obj.anil
	puts
	print 'I am an Object: '
	puts "here's self inside a singleton method of mine:"
	puts self
end

obj.anil  # pints the content from above method.
puts
print 'And inspecting obj from outside, '
puts "to be sure it's the same object:"
puts obj # checking and printing obj from outside the method. to be sure it's the same object.
puts

## Output

# I am an Object: here's self inside a singleton method of mine:
#	<Object:0x007fe7f8169490>

#	And inspecting obj from outside, to be sure it's the same object:
#	<Object:0x007fe7f8169490>
