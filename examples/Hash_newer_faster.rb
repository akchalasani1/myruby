# simply sets a default value for all elements in the hash.
=begin
As you can see, where a "my_normal" hash always returns nil by default,
specifying a default(ex:brown) in the Hash constructor will always return your
custom default for any failed lookup's on that hash instance.
=end

my_normal = Hash.new
was_not_there = my_normal[:zig]
puts "Wasn't there:"
p was_not_there
puts

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]
puts "Pretending to be there:"
p pretending_to_be_there