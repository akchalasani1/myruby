# condition inside a for loop, and loop inside a function.

def find_num(numbers)
  (0..100).each do |i|

    if i == numbers
      puts "We have your number #{i}"
      return
      else
    end
  end

  puts "oops, sorry we don't have it"

end

print "Enter any number: "
numb = gets.to_i
find_num(numb)
