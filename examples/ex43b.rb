  ## Game Scene

  class Scene
    def enter()
      abort("This function 'enter' should not be used directly. Please subclass Scene and implement an enter method.")
    end

  end

  ## Game Engine
  class Engine
    def initialize(scene_map)
      @scene_map = scene_map
    end

    def play()
      # opening_scene from class Map
      current_scene = @scene_map.opening_scene()
      # next_scene, win from class Map
      end_scene = @scene_map.next_scene('win')

      ## while loop
      while current_scene != end_scene

        next_scene_name = current_scene.enter()

        current_scene = @scene_map.next_scene(next_scene_name)
      end

      # be sure to print out the last scene
      current_scene.enter()

    end
  end

  ##
  ## All classes below are subclasses of Scene
  ##

  ## This is when the player wins the game
  class Win < Scene
    def enter()
      puts "Woohoo! You are a Winner!"
      exit(1)
    end
  end

  ## This is when the player dies and we display some funny random message.
  class Death < Scene
    @@end_messages = ["looks like you lost", "you did not make it",
    "Womp womp, game over for you.", "better luck next time."]

    def enter()
      puts @@end_messages[rand(3)]
      exit(1)
    end
  end

  class CentralRoom < Scene
    def enter()
      puts "\n Options: | attack | run | joke |"
      print "> "

      action = $stdin.gets.chomp

      if action.include?("shoot") || action.include?("attack")
        return 'death'

      elsif action.include?("hide") || action.include?("run")
        return 'death'

      elsif action.include?("joke")
        return 'silver_room'

      else
        puts "Action is not recognized!"
        return 'central_room'
      end

    end
  end

  class SilverRoom < Scene
    def enter()
      print "[Enter passcode]> "
      guess = $stdin.gets.chomp
      password  = "5#{rand(5)}5"
      guess = password if guess == "help"
      try = 1

      while guess!= password && try < 10
        puts "Buzz! Wrong Password!"
        try += 1
        print "{Enter passcode]> "
        guess = $stdin.gets.chomp
      end

      if guess == password
        return 'gold_room'

      else
        return 'death'
      end

    end
  end

  class GoldRoom < Scene
    def enter()
      puts "\n Options: | yes or y | no or n |"
      print "Do you want to open the door? > "


      open_goldroom = $stdin.gets.chomp.downcase

      if open_goldroom == "no" || open_goldroom == "n"
        return 'death'

      elsif open_goldroom == "yes" || open_goldroom == "y"
        return 'escape_room'
      end

    end
  end


  class EscapeRoom < Scene
    def enter()
      puts "\n Options: | Enter Door Number 1, 2 or 3 |"

      good_door = rand(1..3)
      print "[which door? #]> "

      guess = $stdin.gets.chomp
      guess = good_door if guess == "help"

      if guess.to_i == good_door
        puts "You open door %s ." %guess
        return 'win'

      else
        puts "You open door %s ." %guess
        return 'death'
      end

    end
  end

  ## Game Map
  class Map
    @@scenes = {
        "central_room" => CentralRoom.new(),
        "silver_room" => SilverRoom.new(),
        "gold_room" => GoldRoom.new(),
        "escape_room" => EscapeRoom.new(),
        "death" => Death.new(),
        "win" => Win.new(),
    }

    def initialize(start_scene)
      @start_scene = start_scene
    end

    def next_scene(scene_name)
      return @@scenes[scene_name]
    end

    def opening_scene()
      return next_scene(@start_scene)
    end
  end

  # central_room from class Map
  a_map = Map.new('central_room')

  # a_map from above
  an_engine = Engine.new(a_map)

  an_engine.play()
