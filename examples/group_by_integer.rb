=begin
##Example #2: Grouping integers
The collection: an array of 50 random integers between 1 and 99
The rule: group integers into 5 bins (e.g, 1-19, 20-39…)
=end

# generate random numbers
numbers = (1..99).to_a.sample 5  # 50 = generate 50 random numbers from range 1..99
# group by quotient (number divided by 20)
=begin
The answer after you divide one number by another
dividend ÷ divisor = quotient
Example: in 12 ÷ 3 = 4, 4 is the quotient
=end
get_int_grpby = numbers.group_by {|number| number / 20}
puts get_int_grpby

=begin
{3=>[71, 75, 73, 68, 60, 64, 77, 69, 62, 72, 61, 63, 74], 4=>[84, 92, 93, 85, 96, 97, 86, 81], 1=>[38, 31, 37, 35, 34, 32, 21, 23, 33, 26, 20, 36], 0=>[16, 4, 18, 11, 3, 8, 15, 19], 2=>[41, 53, 51, 48, 59, 46, 42, 54, 40]}

or

{
  3 => [ 71, 75, 73, 68, 60, 64, 77, 69, 62, 72, 61, 63, 74],
  4 => [ 84, 92, 93, 85, 96, 97, 86, 81],
  1 => [ 38, 31, 37, 35, 34, 32, 21, 23, 33, 26, 20, 36],
  0 => [ 16, 4, 18, 11, 3, 8, 15, 19],
  2 => [ 41, 53, 51, 48, 59, 46, 42, 54, 40]
}

=end