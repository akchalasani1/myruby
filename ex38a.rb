# Doing things to arrays

=begin
6. Find 10 examples of things in the real world that would fit in an array. Try writing some scripts to work with them.

1) deck of cards
2) address book
3) menu
4) shopping list
5) directions
6) store locations
7) student name list
8) car models
9) people waiting in line
10) appointments
=end

students = [ "ram", "kevin", "john", "siva", "james", "tony", "mary", "linda"]
puts "There are #{students.length} students in the class."

students.each do |student|
  puts "Hello #{student}, Welcome!"
end
