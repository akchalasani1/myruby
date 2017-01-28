
def office_staff_and_chairs(office_staff, office_chairs)
  puts "\nYou have #{office_staff} people in your office."
  puts "You have #{office_chairs} chairs in your office."
  puts "You have lot of extra chairs"
  puts "You need some desks. \n"
end

print "Enter number of employees you have: "
employees = gets.chomp.to_i
print "Enter number of chairs you have: "
chairs = gets.chomp.to_i
office_staff_and_chairs(employees, chairs)

puts "\nLet's see how many un-occupied extra chairs, and add 10 to employees"
office_staff_and_chairs( employees + 10 , chairs - employees  )

puts "\nLet's multiplie employees and chairs by 2"
office_staff_and_chairs( employees * 2 , chairs * 2)

puts "\nLet's divide employees and chairs by 2"
office_staff_and_chairs( employees / 2 , chairs / 2)

puts "\nLet's take 10% of employees and chairs."
office_staff_and_chairs( 0.10 * employees , 0.10 * chairs)
