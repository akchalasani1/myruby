
def movies(action, comedy, drama)
  puts "\n#{action} action movies this month"
  puts "#{comedy} comedy movies this month"
  puts "#{drama} drama movies this month"
  puts "All movies are great!"
  puts "It is always a good idea to have some popcorn. \n"
end

puts "\nEnter the number of Action Movies you have seen :"
axn = gets.chomp.to_i
puts "Enter the number of Comedy Movies you have seen :"
cmdy = gets.chomp.to_i
puts "Enter the number of Drama Movies you have seen : \n"
drma = gets.chomp.to_i

puts "\n SO FAR YOU HAVE SEEN --> #{axn} Action Movies"
puts "\n SO FAR YOU HAVE SEEN --> #{cmdy} Comedy Movies"
puts "\n SO FAR YOU HAVE SEEN --> #{drma} Drama Movies"

puts "\nThere are some NEW movies added today to Action, Comedy, Drama categories :"
movies(4, 3, 5)

puts "\nSPECIAL Featuring, Movies of the month :"
spcl_action = 3
spcl_comedy = 4
spcl_drama = 6
movies(spcl_action, spcl_comedy, spcl_drama)

puts "\nONE DAY Temporary Movies :"
movies(2 + 1, 2 + 2, 3 + 4)

puts "\nTotal Movies Available :"
movies(100 + axn + spcl_action, 80 + cmdy + spcl_comedy, 150 + drma + spcl_drama)

puts "\nTotal number of Available movies you still need to Watch :"
movies(100 - axn - spcl_action, 80 - cmdy - spcl_comedy, 150 - drma - spcl_drama)
