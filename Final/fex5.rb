my_country = 'USA'
my_state = 'California'
my_county = 'Santa Clara'
my_city = 'Sunnyvale'
my_location = 'South Bay'
my_street = 'Persian Drive'
my_community = 'Fox Hollow Community'
rent = 1000
utility = 500
misc = 500

puts "I live in: #{my_country}"
puts "Name of the state i am in is: #{my_state}"
puts "Our county name is: #{my_county}"
puts "It is always sunny in: #{my_city}"
puts "Sunnyvale comes under: #{my_location}, we live on: #{my_street} in: #{my_community}."
puts "If i add rent = #{rent}, utility = #{utility} and misc = #{misc}, i get my monthly total bill = #{rent + utility + misc}"

=begin
# Difference between singe and double quotes.
puts 'a\nb' # just print a\nb
puts "a\nb" # print a, then b at newline

name = 'Joe'
greeting = 'Hello, #{name}' # this won't produce "Hello, Joe"
puts greeting
#
# '' - variable can't be called into single quotes with #{} into other variable ex: greeting = 'Hello, #{name}' . since it expects only characters as a string not other variable.
# "" - In double quotes you can write a string as well as call other variable with #{}.
=end
