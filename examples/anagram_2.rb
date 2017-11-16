# Check whether two strings are anagram of each other and displays True/ False

def is_anagram(w1, w2)
  w1.downcase.split("").sort.join == w2.downcase.split("").sort.join
end

puts is_anagram("cars", "sarc")
puts is_anagram("cars", "bike")