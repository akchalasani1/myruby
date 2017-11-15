user_name = ARGV.first
prompt = '>'

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions"
puts "Do you like me, Answer Yes/No #{user_name} ?"
print prompt
likes = $stdin.gets.chomp

# a comma for (puts) is like using (puts) twice ex: for (prompt)
puts "Where do you live #{user_name}", prompt
lives = $stdin.gets.chomp

# a comma for (puts) is like using (puts) twice ex: for (prompt)
print "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
you live in #{lives}, Not sure where that is.
And you have a #{computer} computer. Nice.
"""
