# condition inside a for loop, and loop inside a function.
  def find_num(numba)
    nums = [1, 2, 3, 4]

    nums.each do |i|

        if i == numba
          puts "We have your number in our list: #{numba}"
          return
        else
        end
    end
    puts "We Don't have it, in our list: #{numba}"

  end

  print "Enter a number in between 0 to max 15 to check if we have on our list: "
  num = gets.to_i
  find_num(num)



