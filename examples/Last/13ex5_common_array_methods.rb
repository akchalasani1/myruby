# Common Array Methods

# empty?
newyork = []
puts newyork.empty? # returns "true" or "false"
# True if the array is empty


# first
city = ['los angeles', 'san diego', 'san francisco']
puts city.first
# prints the first element/object in the array

#	include?
phones = %w[iphone8 windows samsung google]
puts phones.include?('google')
# True if the array includes the given value

#	index
vehicles = %w[car bus jeep cycle flight van]
puts vehicles[2]
# The index number of a given value

# inspect
names = %w[tom john ram tong stark]
puts names.inspect
#The array in a printable format # => ["tom", "john", "ram", "tong", "stark"]

# last
menu = %w[cake rice soda cookies ramen curry]
puts menu.last
# The last element/object in the array gets printed  # => curry

# length
office = %w[tables chairs computers books printers]
puts office.length
# The number of element/objects in the array # => 5

# reverse
numbers = %w[five four three two one]
puts numbers.reverse

# sort
num = [5, 3, 2, 0, 1, 4]
puts num.sort
# The array sorted in assending order # =>  0 1 2 3 4 5

alpha = %w[f c a b d e]
puts alpha.sort.reverse.inspect
# The array in a printable format sorted [a, b, c, d, e, f] and reversed # => ["f", "e", "d", "c", "b", "a"]

# uniq
car_mfg = %w[555 ford toyota bmw honda merk ford bmw 555 747]
puts car_mfg.uniq.inspect
# The unique elements/objects in the array gets displayed, duplicates won't get printed.
# The inspect method, returns values in the string representation format of the array.
