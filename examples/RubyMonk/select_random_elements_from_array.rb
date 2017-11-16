def random_select(array, n)
  result = []
  n.times do
    result << array[rand(array.length)]
  end
  result
end

test = random_select([1, 2, 3, 4, 5, 6], 2)
puts test
