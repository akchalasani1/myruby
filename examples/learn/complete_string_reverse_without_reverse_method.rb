def reverse_whole_string(string)
  raise StandardError.new('Passed string cannot be reversed because it is empty') if string.nil? || string.empty?
  #puts string
  end_loop = string.length
  #puts end_loop
  new_string = '' # empty variable can be "" also or ''
  while end_loop > 0 do # or do , not required.
    end_loop -= 1 # arrays start with 0, so we need to do end_loop -1 first, so that array displays actual length, num = num - 1 or num -= 1
    new_string += string[end_loop]
  end
  new_string
end
puts reverse_whole_string("apples kiwi mango")