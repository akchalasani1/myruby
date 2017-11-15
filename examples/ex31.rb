# Making Decsisions
=begin
You should know that Ruby has three kinds of code blocks you need to read.
You have the kind that if-statements use, where code is started after the if,
and the block of code is ended with end. You then have two kinds for .each style blocks.
Either you use do ... end or { |i| puts "I got it #{i}" } 

Rules for If-Statements
1. Every if-statement must have an else.
2. If this else should never run because it doesn't make sense,
then you must use a dead function in ex35 in the else that prints out an error message and dies,
 just like we did in the last exercise. This will find many errors.
abort("Message goes here")
3. Never nest if-statements more than two level deep and always try to do them one level deep.
4.Treat if-statements like paragraphs, where each if-elsif-else grouping is like a
set of sentences. Put blank lines before and after.
Your Boolean tests should be simple. If they are complex,
move their calculations to variables earlier in your function and use a good name
for the variable.

=end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2 or door #3?"

print "> "
door = $stdin.gets.chomp

  if door == "1"
      puts "There is a giant bear here eating a cake. what do you do?"
      puts "1. Take the cake?"
      puts "2. Scream at the bear?"
      puts "Try any other door number."


      print "> "
      bear = $stdin.gets.chomp

      if bear == "1"
        puts "The bear eats your face off. Good job!"

        elsif bear == "2"
          puts "The bear eats your legs off. Good job!"

        else
          puts "Well, doing %s is probably better. Bear runs away." % bear

      end

  elsif door == "2"
      puts "You share into the endless abyss at Cthulhu's retiana."
      puts "1. Blueberries."
      puts "2. Yellow jacket clothespins."
      puts "3. Understanding revolvers yelling melodies."

      print "> "
      insanity = $stdin.gets.chomp

      if insanity == "1" || insanity == "2"
        puts "Your body survives powered by a mind of jello. Good job!"

      else
        puts "The insanity rots your eyes into pool of muck. Good job!"

      end

  elsif door == "3"
      puts "you can find yourself on the surface of the moon"
      puts "1. Plant a flag."
      puts "2. Take a selfie."
      puts "3. Build a house."
      puts "4. Build a office."


      print "> "
      moon = $stdin.gets.chomp

      if moon == "1"
        puts "The moon punctures and you float into space. Good job!"

        elsif moon == "2"
          puts "You become an internet celebrity. Well done!"

        elsif moon == "3"
          puts "You build the first house. Well done!"

        elsif moon == "4"
          puts "You build a modern office in moon. Well done!"

        else
          puts "You're on the moon and you can't decide what to do? Get out of here!"

      end

  else
    puts "You stumble around and fall on a knife and die. Good job!"

  end
