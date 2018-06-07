# You can pass parameters to method new and those parameters can be used to initialize class variables.
# When you plan to declare the new method with parameters, you need to declare the method initialize at the time of the class creation.
# The initialize method is a special type of method, which will be executed when the new method of the class is called with parameters.
# Inside the functions in a class, @ is a variable for the instance/object being accessed.

class Customer
	@@no_of_customers = 0
	def initialize(id, name, address)
		@cust_id = id
		@cust_name = name
		@cust_addrs = address
	end

	attr_accessor :cust_id
	attr_accessor :cust_name
	attr_accessor :cust_addrs

	def apple()
		puts "I AM CLASSY APPLES!"

	end
end

cust1 = Customer.new("1", "John", "3455 Wisdom Apartments, Ludhiya")

cust2 = Customer.new(2, "Tom", "5 alm st, california")

puts cust1.cust_id, cust1.cust_name, cust1.cust_addrs

puts cust2.cust_id, cust2.cust_name, cust2.cust_addrs

puts cust1.apple
puts cust1.apple()

puts cust2.apple
puts cust2.apple()
