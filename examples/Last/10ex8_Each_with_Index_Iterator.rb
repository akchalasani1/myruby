# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# Sometimes we have an "array" and we don't want to loop over every value but rather want to loop over every index,
# this is where the "each_index" iterator comes in handy

# Each_with_Index Iterator

array = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
# "i" will display array index starting with zero and "e" will display value in the array.
array.each_with_index{|e,i| puts i, e}
