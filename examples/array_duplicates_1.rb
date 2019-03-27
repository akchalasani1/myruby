# Language: Ruby, Level: Level 3
# %w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# http://www.zenspider.com/ruby/quickref.html#types
country = %w(america india china tibet india mexico america england china india)

count = Hash.new(0) # Hash.new(0) sets default value for any key to 0, while {} sets nil
# ex: {"america"=>0, "india"=>0 etc...}
country.each do |new_ctry|
  count[new_ctry] += 1
end

puts count


=begin

Hash.new(0) sets default value for any key to 0, while {} sets nil
h1 = Hash.new(0)
h1.default  # => 0
h1[:a] += 1 # => 1

h2 = {}
h2.default  # => nil
h2[:a] += 1 # => NoMethodError: undefined method `+' for nil:NilClass

=end