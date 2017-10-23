puts "It's halloween and you are watching a moive."
puts "There is a thump on the window. you..."
puts "1. Ignore"
puts "2. Get Scared"
puts "3. Go Invenstigate"
print ">> "
decision = $stdin.gets.chomp

  if decision == "1"
      puts "You ignored the sound and keep watching the movie."
      puts "Now there is a knock on the door."

      puts "1. Call the cops."
      puts "2. Open door"

      print ">> "
      door = $stdin.gets.chomp

      if door == "1"
        puts "cops shows up and warned you for false alarm."

      else door == "2"
        puts "kids showed up in costums"

      end

  elsif decision == "2"
      puts "you're hiding in closet"
      puts "Do you thing it is safe to come out? Yes or No."

      print ">> "
      closet = $stdin.gets.chomp

      if closet == "yes"
        puts "You saw some one standing outside the closet with a hood, what do you do?"
        puts "1. Tell your friends to stop fooling around."
        puts "2. Jump on the person and beat the crap out."
        puts "3. Scream as loud as possible, so the person runs away."

        print ">> "
        hood = $stdin.gets.chomp

        if hood == "2" || hood == "3"
          puts "your parents came to rescue you."

        else hood == "1"
          puts "your friends lol and said you are a chicken."

        end

      else closet == "no"
        puts "you slept inside the closet like a chicken."

      end

  else decision == "3"
    puts "you saw a cat running away."

  end
