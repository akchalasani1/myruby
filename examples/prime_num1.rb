# condition inside a for loop, and loop inside a function.

def get_prime(numbers)
  (0..numbers).each do |i|
    if i == 2 || i % 2 != 0
      puts i
    elsif i == 0
    puts "oops, number needs to be more than 1"

    end

  end


end

#test = get_prime(10)   # if you want to enter max number with in code.

print "Enter a max number do display all prime number in between 1 to max number: "
num = gets.to_i
get_prime(num)