# what if

people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5
puts "Now dogs became: #{dogs} by using (dogs += 5),  ex: dogs = 15 + 5"

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are equal to dogs."
end

if !("testing" == "testing" && "Zed" == "Cool Guy")
  puts "The Conditional statement is TRUE. (True && False = False, !False = True)"
end
