# basic class
class Customers

end

# Sub-class /( <) inheritance
class Testcust < Customers		# (‘TestCust’ is subclass or ‘TestCust’ is inherited from parent class ‘Customer’)

end

# Child-class / Sub-class /( <) inheritance
class Onecust < Testcust		# (‘Onecust’ is childclass / subclass or ‘Onecust’ is inherited from subclass class ‘TestCust’)

end

# Object/ instance
cust1 = Customers.new   # cust1 is the object and .new is the instance of the Customer.


# class variables
class Cust1
	@@no_of_customers = 0
end
