#  $ruby ex14.rb anil chalasani

=begin
changing prompt to  what ever, will get it changed in all below prompt.
for just one argument you need to use user_name = ARGV.first
for multiple argument you need to use a, b, c = ARGV
=end

#user_name = ARGV.first # gets the first argument
first_name, last_name = ARGV
prompt = '+> '

puts "Hi #{first_name} #{last_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{first_name} #{last_name}? "
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{first_name} #{last_name}? ", prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
