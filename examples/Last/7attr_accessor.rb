# Attribute Accessors : attr_reader, attr_writer, and attr_accessor methods actually generate methods for you
# Let's say you have a class Person.

class Person1

end

prsn1 = Person1.new
prsn1.name		#		=> no method error

#Obviously we never defined method name. Let's do that.

#####

class Person2
	def name
		@name		# simply returning an instance variable @name.
	end
end

prsn2 = Person2.new
prsn2.name		#		=> nil
prsn2.name = "Tommy"		#		=> no method error

# Aha, we can read the name, but that doesn't mean we can assign the name.
# Those are two different methods. The former is called reader and latter is called writer.
# We didn't create the writer yet so let's do that.

#####

class Person3
	def name
		@name
	end

	def name=(str)
		@name = str
	end
end

prsn3 = Person3.new
prsn3.name = "Tommy"
prsn3.name		#		=> "Tommy"

#	Awesome. Now we can write and read instance variable @name using reader and writer methods.
# Except, this is done so frequently, why waste time writing these methods every time? We can do it easier.

#####

class Person4
	attr_reader :name
	attr_writer	:name
end

# Even this can get repetitive. When you want both reader and writer just use accessor!

#####

class Person5
	attr_accessor	:name
end

prsn5 = Person5.new
prsn5.name = "Tommy"
puts prsn5.name		#		=> "Tommy"

# Works the same way! And guess what: the instance variable @name in our ex: prsn5 ,
# object will be set just like when we did it manually, so you can use it in other methods.

#####

class Person6
	attr_accessor	:name

	def greetings
		"Hello #{name}"
	end
end

prsn6 = Person6.new
prsn6.name	= "Tommy"
puts prsn6.greetings		#		=> Hello Tommy
