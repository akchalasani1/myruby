# Hash creation:-

# A "store" method can be used to initialize the hash with some values.
# It can be use "instead" of the "square brackets".

#Ex:-
names = Hash.new
names.store(1, "John")
names.store(2, "Tommy")
names.store(3, "Ellen")

puts names

# The store method associates the given "key" with the given "value" and stores the pair in the hash.

# The "first parameter" of the store method is the "key" and the "second parameter" is the "value".

