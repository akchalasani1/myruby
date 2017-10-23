# Display anagram in one array

#a = %w(america india china tibet india mexico america england china india)

a = %w['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
test = a.group_by { |element| element.downcase.chars.sort }.values
print test
