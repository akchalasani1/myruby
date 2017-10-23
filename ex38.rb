# Doing things to arrays
ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in the above list. Let's fix ten_things. "

# split(ten_things, '')
# call split with argument ten_things
stuff = ten_things.split(' ')
# call split on ten_things

more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there are 10 items

# length(stuff)
while stuff.length != 10

  # pop(more_stuff)
  # call pop with argument more_stuff
  next_one = more_stuff.pop
  # call pop on more_stuff

  puts "Adding : #{next_one}"
  # push(stuff, next_one)
  # call push with argument stuff
  stuff.push(next_one)
  # call push on stuff

  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some thing with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy

# pop(stuff)
# call pop with argument stuff
puts stuff.pop()
# call pop on stuff

# join(stuff)
# call join with argument stuff
puts stuff.join(' ')
# call join on stuff

# join(stuff[3..5], "#")
# call join with argument stuff[3..5] "#"
puts stuff[3..5].join(" # ")
# call join on stuff[3..5]
