x = [1, 2, 3, 4, 5, 6, 7, 9, 10]

b = x.length + 1

temp = b * (b+1)/2

sum = 0
 x.each do |sample|
 sum += sample
end

puts "Missing number in the array is: #{temp - sum}"
