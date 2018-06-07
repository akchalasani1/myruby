# Hash iteration:-

# There are several methods that can be used to loop through a Ruby hash.

stones = {1 => "garnet", 2 => "topaz", 3 => "opal", 4 => "amethyst"}

stones.each {|k, v| puts "Key: #{k}, Value: #{v}"}

puts
stones.each_key {|key| puts "Key: #{key}"}

puts
stones.each_value {|value| puts "Value: #{value}"}

puts
stones.each_pair {|k, v| puts "Key: #{k}, Value: #{v}"}

# The "each_pair method" is a synonym for the "each method".
# We loop through the "keys" and "values" of the "stones hash".
