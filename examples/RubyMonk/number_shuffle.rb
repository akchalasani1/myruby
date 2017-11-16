# Public: Calculate all the unique permutations of the digits of an Integer.
#
# number - The Integer for which permutations to be yielded.
#
# Returns unique PERMUTATIONS of the digits of an Integer.
def number_shuffle(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while
  combinations.uniq.size != no_of_combinations
  combinations.uniq.sort
end

test = number_shuffle(123)
p test
