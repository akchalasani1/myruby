# To Integer:
# The ".to_i" method converts a string to an integer.

puts "15".to_i # returns: 15  # integer


# sub:-
# The ".sub" method only replaces the first occurrence of the match with the new text.

balloon = "Sammy has a balloon"
puts balloon.sub("has", "had")


# gsub:-
# The ".gsub" method replaces  all the occurrence of the matches with the new text.
# which performs global substitution.
balloon = "Sammy has a balloon. The balloon has a ribbon"
puts balloon.gsub("has", "had")

