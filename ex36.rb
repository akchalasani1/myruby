require "./themerman.rb"
require "./thebride.rb"

def start
  puts "You are staying in a cabin in the woods for a weekend trip."
  puts "After hiking for all day, you and your friends decided to relax in the basement."
  puts "There are assortment of items around."
  puts "Do you want to take a look at them? * yes or no *"

  print "> "
  examine_items = $stdin.gets.chomp.downcase

  if examine_items == "yes"
    pick_items

  else examine_items == "no"
    puts "You sit around doing nothing."
    puts "Your friend gets bored and says 'Hey, let's check out some of this stuff!' "
    pick_items

  end
end

def pick_items
  puts "On a mannequin, there is a vintage wedding dress and a gorgeous necklace."
  puts "On a table, there is a conch shell."
  puts "Which one do you like to look at first? * necklace, conch, dress, shell, nothing *"

  print "> "
  item = $stdin.gets.chomp

  if item.include?("necklace") || item.include?("dress")
    Bride.start(item)

  elsif item.include?("conch") || item.include?("shell")
    Merman.start()

  else
    puts "You didn't pick any of the items."
    dead("You are so boring that your friends kicked you out of the house.")

  end
end

def win(monster_killed)
  puts "You successfully faced off against #{monster_killed}. You Win!"
  exit(0)
end

def dead(reason)
  # << - Binary Left Shift Operator
puts reason << "Game Over!"
  exit(0)
end

start
