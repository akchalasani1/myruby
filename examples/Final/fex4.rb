pods = 80

chairs_in_each_pod = 4.0

laptops = 50

employees = 40

number_of_total_chairs = pods * chairs_in_each_pod
number_of_unfilled_chairs = number_of_total_chairs - employees
number_of_employees_with_laptops = employees
number_of_available_laptops = laptops - employees

puts "Total chairs available = #{number_of_total_chairs}"
puts "Occupied charis = #{employees}"
puts "Un-Occupied charis = #{number_of_unfilled_chairs}"
puts "Employees with laptops = #{number_of_employees_with_laptops}"
puts "Total laptops = #{laptops}"
puts "Available new laptops in inventory = #{number_of_available_laptops}"
