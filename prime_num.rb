# condition inside a function.

def prm_num (test_numbers)

    if test_numbers == 0 || test_numbers == 1
      puts "The number #{test_numbers} you have entered is not a Prime number."

    elsif test_numbers == 2
      puts "The number #{test_numbers} you have entered is a Prime number."

    elsif test_numbers % 2 == 0 # divided by 2 and reminder is 0
      puts "The number #{test_numbers} you have entered is not a Prime number."

    else
      puts "The number #{test_numbers} you have entered is a Prime number."


    end
  end

print "Enter a number please: "
first_number = gets.to_i
prm_num(first_number)