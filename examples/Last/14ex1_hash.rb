## Ruby Hashes:-
# Hashes are another very useful, and widely used kind of thing that can be used to store other objects.
# Unlike arrays which are were lists, Hashes are like dictionaries:
# "Dictionaries: look up one thing by another"

# You can use them to look up one thing by another thing.
# We say: we look up a value from a Hash using a key. 

## Hash definition:-
# Ruby hash is a collection of key-value pairs.
# It is similar to an array. Unlike arrays, hashes can have arbitrary objects as indexes.
# Arrays can only have integers. 

# Hash creation styles1:
names = Hash.new
names[1]= "Tom"
names[2]= "John"
puts names

# Hash creation styles2, with literal notation => :
# city = {1=>"SF", 2=>"LA", 3=>"SD"}
city = {"SF"=>111, "LA"=>222, "SD"=>3}
puts city

# Hash creation styles3, with literal notation => :

city = {
		1=>"SF",		## both "keys" and "values" are "string types". "san Francisco" => "SF",
		2=>"LA",
		3=>"SD"
}
puts city

# Hash creation styles4:

