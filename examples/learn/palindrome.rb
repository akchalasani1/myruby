
print "Enter word or numbers to check if it is palindrome : \n"
nam1 = $stdin.gets.chomp
#puts nam1

nam2 = nam1.reverse
#puts nam2

if nam1 == nam2
  puts "Yes, #{nam1} it is a palindrome"
else
  puts "Nop, #{nam1} it is not a palindrome"
end