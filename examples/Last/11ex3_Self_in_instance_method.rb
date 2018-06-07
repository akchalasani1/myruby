#	Self in instance method definitions

#	At the time the method definition is executed, the most you can say is that self inside this method
# will be some future object that has access to this method.

class Sun
	def moon
		puts
		puts "Class sun, method moon:"
		puts self
		puts
	end
end

saturn = Sun.new
saturn.moon

# The output #<Sun:0x007fb95f169930> is Ruby's way of saying "an instance of SUN".

# 0x007fb95f169930 is saturn, that is a instance of SUN.
