# Language: Ruby, Level: Level 3
# %w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# http://www.zenspider.com/ruby/quickref.html#types
country = %w(america india china tibet india mexico america england china india)

count = Hash.new 0

country.each do |new_ctry|
  count[new_ctry] += 1
end

puts count
