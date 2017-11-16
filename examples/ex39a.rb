# Hash Map
south_states = {
    'Andhra Pradesh' => 'AP',
    'Telangana' => 'TS',
    'Tamil Nadu' => 'TN',
    'Karnataka' => 'KA',
    'Kerala' => 'KL'
}

capital = {
    'AP' => 'Amaravathi',
    'TS' => 'Hyderabad',
    'TN' => 'Chennai',
}

# Adding 2 more capitals
capital['KA'] = 'Bengaluru'
capital['KL'] = 'Thiruvananthapuram'

towns = {
    'AP' => 'Vijayawada',
    'TS' => 'Khammam',
    'TN' => 'Vellore',
    'KA' => 'Mysore',
    'KL' => 'Kochi'
}
# puts out some states
puts ' - ' * 10
puts "State for capital Amaravathi is: #{south_states.key 'AP'}"

# puts out some  capitals
puts ' - ' * 10
puts "Capital for Andhra is: #{capital['AP']} "

# puts out some popular city's
puts ' - ' * 10
puts "Popular town is Andhra is: #{towns['AP']}"

# do it by using the state then capital and towns
puts ' - ' * 10
puts "Andhra's popular town is: #{towns[south_states['Andhra Pradesh']]}"

# puts every state abbreviation
puts ' - ' * 10
south_states.each do |state, abbrev|
  puts "#{state} is abbreviated: #{abbrev}"
end

# puts capital for each state
puts ' - ' * 10
capital.each do |abbrev, capi|
  puts "#{capi} is the capital of: #{abbrev}"
end

# puts state, abbreviation, capital and popular town
puts ' - ' * 10
south_states.each do |state, abbrev|
  cptl = capital[abbrev]
  city = towns[abbrev]
  puts "#{state} is abbreviated : #{abbrev} with it's state capital as: #{cptl} and other popular town: #{city}"
end

puts ' - ' * 10

# by default ruby will say nil if something isn't in ruby
new_state = south_states['Maharastra']

if !new_state
  puts "Sorry, no Maharastra"
else
  puts "New state added Maharastra"
end

# default value if nil result
city =  towns['MH']
city ||= 'Does Not Exists'
puts "The city for the state of 'MH' is: #{city}"

# study drill
# I use the select method on the capital hash to find which provinces have long names (length greater than 10 characters).

long_capital = capital.select {|k,v| v.length > 10}

puts "There are #{long_capital.length} capital names with a length greater than 10:"
long_capital.each do |abbrev, province_name|
  puts province_name
end