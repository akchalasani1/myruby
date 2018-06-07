# Deleting pairs in hash:-

# There are several methods that can be used to loop through a Ruby hash.

names = Hash.new
names[1] = "zora"
names[2] = "rick"
names[3] = "blair"
names[4] = "tilda"
names[5] = "rodney"

names.delete 4
names.shift

puts names

#	delete:- The "delete method" removes and returns a value for a specified key. 

# shift:- The shift method deletes the first pair from the hash.
# It also returns the removed pair as an array.

