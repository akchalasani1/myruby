x = [1, 3, 4, 6, 9, 10, 20]
y = (1..20).to_a

# .to_a  -> Returns self. If called on a subclass of Array, converts the receiver to an Array object.

p "missing number in the array are: #{y-x}"
