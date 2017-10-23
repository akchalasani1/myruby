puts "Enter any number in between 1 to 10"
print "> "
number = $stdin.gets.chomp

  if  number >= "1" && number <= "5"
      puts "you have entered number that is in between 1 to 5 range"

    elsif number >= "6" && number <= "10"
      puts "you have entered number that is in between 6 to 10 range"

    else
      puts "NOT IN THE RANGE OF 1 TO 10"

  end
