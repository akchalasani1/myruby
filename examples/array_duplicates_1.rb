# Language: Ruby, Level: Level 3
country = %w(america india china tibet india mexico america england china india)

count = Hash.new 0

country.each do |new_ctry|
  count[new_ctry] += 1
end

puts count
