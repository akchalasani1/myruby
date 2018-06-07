# Break with argument:-

foo = [1, 2, 3, 4, 5, 6, 7].each do |element|
	if (element * 2) == 8
		break element
	end
end

puts foo # pints element value "4" from the array "foo", since when 4 is multiplied with 2 that is == 8.

