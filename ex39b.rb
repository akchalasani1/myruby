# Study drill 3
# hashes do not have order, you can sort a hash.
# Calling the sort method on a hash will put them in the alphabetical order of the keys.
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville',
    'NY' => 'New York',
    'OR' => 'Portland'
}

puts ' - ' * 10
states.sort.each do |state, abbrev|
  puts "#{state} is abbreviated: #{abbrev}"
end
