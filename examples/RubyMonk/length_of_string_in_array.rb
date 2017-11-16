def length_finder(input_array)
  input_array.map {|element| element.length}
end

input_array = length_finder(['Ruby','Rails','C4320'])
print input_array
