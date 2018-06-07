#	Basic hash method

names = Hash.new
names[1] = "Andrew"
names[2] = "Bryan"
names[3] = "Charlie"
names[4] = "Don"
names[5] = "Edward"

# Size:- The "size method" returns the size of the hash. It is a synonym for the length method.

puts "The size of the hash is: #{names.size}"

# Keys:- The "keys method" returns all "keys" of the hash. The returned data is in the form of an array. 

puts names.keys.inspect

# Values:- The  "Values method" returns all "values" of the hash.

puts names.values.inspect

# dup:- We create a duplicate of the hash by calling the "dup method". The method is inherited by the hash from the parent object.

puts naam = names.dup # displays : {1=>"Andrew", 2=>"Bryan", 3=>"Charlie", 4=>"Don", 5=>"Edward"}

# eql?:- The "eql? method" compares two hash objects. In our case the hashes are equal and the line prints true

puts naam.eql? names # displays "true" since values matches in both hash objects

# empty? :- The "empty? method" checks whether the hash is "empty or not".

puts names.empty?		# The line print false because the names hash has items.

# Clear  :- The clear method deletes all items from the hash.

names.clear
puts names.empty? # The successive call of the empty? method returns true.
puts names		# displays empty {}

# We have methods that can determine whether a key or a value is present in the hash.

domain = {
		:de => "Germany", :sk => "Slovakia", :no => "Norway", :us => "United States"

}

puts domain.has_key? :de
puts domain.include? :no
puts domain.key? :me
puts domain.member? :sk

puts domain.has_value? "Slovakia"
puts domain.value? "Germany"
