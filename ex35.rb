    def gold_room
      puts "This room is full of gold, how much do you take? * enter any number *"

      print "> "

      choice = $stdin.gets.chomp

          # this line has a bug if the user typed in 32 instead of 0 or 1, so fix it.
          # regular expression here. \d means any digit, + means one or more times, =~ is a pattern match operator
          #if choice.include?("0") || choice.include?("1")
          if choice.to_i.is_a? Numeric
          #if choice =~ /\d+/
            how_much = choice.to_i

          else
            dead("Man, learn to type a number.")

          end

          if how_much < 50
            puts "Nice, you are not greedy, you win!"
            exit(0)

          else
            dead("You greedy fool, you loose!")

          end
    end

   def bear_room
     puts "There is a bear here."
     puts "The bear has bunch of honey."
     puts "The fat bear is in front of another door."
     puts "How are you going to move the bear? * take honey, taunt bear, no clue *"
     bear_moved = false

       while true
         print "> "
         choice = $stdin.gets.chomp

         if choice == "take honey"
           dead("The bear looks at you and slaps your face off.")

         elsif choice == "taunt bear" && !bear_moved
           puts "The bear has moved from the door. You can go through it now."
           puts "Select one, * open door or taunt bear *"
           bear_moved = true

         elsif choice == "taunt bear" && bear_moved
           dead("The bear gets pissed off and chews your leg off.")

         elsif choice == "open door" && bear_moved
           gold_room

         else
           puts "I got no idea what that means."

         end
       end
   end

    def cthulhu_room
      puts "Here you see the great evil cthulhu"
      puts "He, it, whatever stares at you and you go insane"
      puts "Do you flee for your life or eat your head? * flee or head? *"

      print "> "
      choice = $stdin.gets.chomp

        if choice.include? "flee"
          start

        elsif choice.include? "head"
          dead("Well that was tasty!")

        else
          cthulhu_room

        end
    end

    def dead(why)
      puts why, "Good Job!"
      exit(100)
    end

    def start
      puts "You are in a dark room."
      puts "There is a door to your right and left."
      puts "Which one do you take? * left or right? *"

      print "> "
      choice = $stdin.gets.chomp

        if choice == "left"
          bear_room

        elsif choice == "right"
          cthulhu_room

        else
          dead("You stumble around the room until you starve.")

        end
    end

  start


=begin
  I think you're failing to grasp the concept of "state", the status that things are in.
  Initially the bear is (implicitly, according to text) in front of the door. The state of the
  bear is "unmoved from its initial position", and is captured by the boolean variable bear_moved
  which is set to the value false. The while true will continue to repeat the contained logic indefinitely
  until you give a command which results in the bear moving or the bear killing you. It looks like the
  correct sequence of actions is to taunt the bear - if it hasn't moved, as indicated by the bear_moved state variable,
  it will move, but it if has already moved and you taunt it again the bear will get annoyed and chew your leg off

  Basically, the chain of logic that gets followed depends on the state,
  i.e., in this case the interaction between the status of the bear (moved or not)
  and your action choice.

=end