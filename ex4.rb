# varibles declared

# we have assigned 100 to varible cars
cars = 100

# we have assigned 4 to varible space_in_a_car
space_in_a_car = 4

# we have assigned 30 to varible drivers
drivers = 30

# we have assigned 90 to varible passengers
passengers = 90

cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# variables called from the top into the string with ""
puts "There are #{cars} cars available."
puts "There are #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
