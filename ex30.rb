# Else and if

people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "All right let's take trucks."
else
  puts "Fine, Let's just stay home then."
end

if cars > people || trucks < cars
  puts "This Conditional stament is True. (True || True = True)"
else
  puts "This Conditional statement is False.(False || False = False)"
end
