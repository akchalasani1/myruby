board = [" ", "0", "X"]
def update_array_at_with(array, index, value)
 array[index] = value
end

update_array_at_with(board, 0, "X")
puts board