  class Scene
    def enter()
      puts "This scene is not yet configured. Subclass it and implement enter()."
      exit(1)
    end
  end

  class Logic_engine
    def initialize(game_chart)
      @game_chart = game_chart
    end

    def play()
      current_spin = @game_chart.first_spin()
      last_spin = @game_chart.next_spin('win')

      while current_spin != last_spin
        my_next_new_spin = current_spin.enter()
        current_spin = @game_chart.next_spin(my_next_new_spin)
      end
        current_spin.enter()
    end
  end

  ## All classes below are subclasses of Scene

  class Snake_bite < Scene
    def enter()
      puts "GAME OVER, Snake Bite"
      exit(1)
    end
  end

  class Game_start < Scene
    def enter()
      puts "\n Options: | Play | Stay |"
      print "> "

      action = $stdin.gets.chomp

      if action == "play"
        return 'role_dice'

      elsif action == "stay"
        return 'snake_bite'

      else
        puts "NOT APPLICABLE"
        return 'game_start'
      end

    end
  end

  class Role_Dice < Scene
    def enter()
      puts "Enter any dice number in-between 1 to 6"
      dice_face = rand(1..6)
      print "> "
      dice_through = $stdin.gets.chomp
      dice_through = dice_face if dice_through == "help"

      if dice_through.to_i == dice_face
        puts "You got a ladder with %s dice face" %dice_through
        return 'big_ladder'

      else
        puts "You got a %s dice face, you are bit by a snake" %dice_through
        return 'snake_bite'
      end

    end
  end

  class Big_ladder < Scene
    def enter()
      puts "Enter the passcode to get on the ladder"
      print "[Enter passcode]> "
      guess = $stdin.gets.chomp
      password = "5#{rand(5)}5"
      guess = password if guess == "help"
      try = 1

      while guess != password && try < 10
        puts "Sorry, Wrong Password"
        try += 1
        print "[Enter passcode]> "
        guess = $stdin.gets.chomp
      end

      if guess == password
        return 'win'
      else
        return 'snake_bite'
      end

    end
  end

  class Win < Scene
    def enter()
      puts "You took the right ladder, YOU WON! "
      exit(1)
    end
  end

  # Brand new independent class
  class Game_map
    @@spins = {
        "game_start" => Game_start.new(),
        "role_dice" => Role_Dice.new(),
        "big_ladder" => Big_ladder.new(),
        "win" => Win.new(),
        "snake_bite" => Snake_bite.new(),
    }


    def initialize(start_game)
      @start_game = start_game
    end

    def next_spin(move_names)
      return @@spins[move_names]
    end

    def first_spin()
      return next_spin(@start_game)
    end

  end

  # Kick Off
  a_gmap = Game_map.new('game_start')
  a_game = Logic_engine.new(a_gmap)
  a_game.play()