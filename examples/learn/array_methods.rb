# Various ways to display values from arrays in Ruby
puts %w(apple kiwi mango)[0]

fruit = %w(apple kiwi mango)
puts fruit[0]

puts ["apple", "kiwi", "mango"][0]

sport = ["ball", "bat", "gloves"]
value = 1
puts sport[value]

puts "____________"

# common Ruby Array Methods
numbers = [ 0.4, 23.0, 23.3, 0.4, 5.2 ]
dwarfs = [ 'Doc', 'Sleepy', 'Bashful', 'Grumpy', 'Happy', 'Sneezy', 'Dopey']

puts numbers.include?(23.0)
puts dwarfs.include?('Donner')

puts dwarfs.index('Grumpy')
puts numbers.index(0.4)
puts numbers.rindex(0.4)
puts dwarfs.index('Papa Smurf')

puts "____________"

puts numbers.sort.inspect
puts dwarfs.sort.reverse.inspect

puts "____________"

puts dwarfs.length

p dwarfs
oops = dwarfs.slice!(2, 3)
puts oops

puts "____________"
# Return only the unique values in an array.

puts numbers.uniq.inspect
puts numbers.length
puts numbers.uniq.length
# puts numbers.uniq! # permanently deletes the duplicates

puts "____________"

anil = [1, 2, 3, 4]
puts anil.map{ |num| num**2 }

kumar = [5, 6, 7, 8]
p kumar.collect{|num| num**2 }

puts "____________"
# delete_at

cha = [11, 12, 13, 14]
p cha
cha.delete_at(1) # delete_at removes value from array permanently
p cha
p cha

# delete
# sometimes you will know the value(cat) that you want to delete, but not the index.
# The delete method permanently deletes all instances of the provided value from the array.
my_pets = [ "cat", "dog", "bird", "cat", "snake" ]
p my_pets
my_pets.delete("cat")
p my_pets
p my_pets

puts "____________"
# flatten
a = [1, 2,[3, 4, 5], [6, 7]]
p a.flatten

puts "____________"
# Break with argument

foo = [1, 2, 3, 4, 5].each do |element|
  if(element * 2) == 8
    break element
  end
end

puts foo

puts "____________"
# Next
i = 20
loop do
  i -= 1
  next if i.odd? # next skip's to the next number if it is odd number.
  puts "#{i}"
  break if i <= 0
end