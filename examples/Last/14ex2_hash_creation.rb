# Hash creation:-
# Ruby hash can be created in two basic ways: with the "new" keyword or with the "hash literal notation => ".

names = Hash.new
names[1]= "Tom"
names[2]= "John"

puts names

# The first script creates a "hash" and adds two "key-value" pairs into the hash object "names" since ".new" is used.

#  A hash is bounded by curly brackets. The keys and the values are paired with the => characters.
# ex: {1=>"Tom", 2=>"John"}

# city = {1=>"SF", 2=>"LA", 3=>"SD"} ex: another way to declare a hash.
# city = {"SF"=>111, "LA"=>222, "SD"=>3} ex: another way to declare a hash.

#
city = {
		1=>"SF",
		2=>"LA",
		3=>"SD"
}
puts city
