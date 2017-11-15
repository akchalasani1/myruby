# Returns true if all the elements are of class Fixnum, false otherwise.
# Fixnum Holds Integer values
def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end

#test = array_of_fixnums?([1, 2, 3])
#test = array_of_fixnums?([999, 100500])
#test = array_of_fixnums?(['a',1,:b])
test = array_of_fixnums?([])

puts test
