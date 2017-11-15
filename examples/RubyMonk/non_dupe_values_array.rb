# Returns the new Array of non-duplicated values.
# Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]
def non_duplicated_values(value)
  value.find_all {|x| value.count(x) == 1}
end

#test = non_duplicated_values([1,2,2,3,3,4,5])
test = non_duplicated_values([1,2,2,3,4,4])
p test
