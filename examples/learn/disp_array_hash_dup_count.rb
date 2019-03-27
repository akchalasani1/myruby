
name = %w(john jo smith lory kevin jack jo john 22 34 88 22 48 34)

sun = Hash.new(0) # Hash.new(0) sets default value for any key to 0, while {} sets nil
# ex: {"america"=>0, "india"=>0 etc...}

name.each do |namely|
  sun[namely] += 1
end

puts sun

=begin

Hash.new(0) sets default value for any key to 0, while {} sets nil
h1 = Hash.new(0)
h1.default  # => 0
h1[:a] += 1 # => 1

h2 = {}
h2.default  # => nil
h2[:a] += 1 # => NoMethodError: undefined method `+' for nil:NilClass

=end