# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
bus = 99
car = 91
palindrome = []
# TRADITIONAL FOR LOOP
for i in car..bus do
  for j in 1..bus do
    k = i * j
    palindrome << k if k.to_s == k.to_s.reverse
  end
end

puts palindrome
#puts palindrome.max
#puts palindrome.min