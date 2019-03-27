def reverse_string_order(sentence)
  raise StandardError.new('Passed string cannot be reversed because it is empty') if sentence.nil? || sentence.empty?
  words = sentence.split  # optional (" ")
  # splits the sentence with spaces and form an array.
  new_sentence = []
  end_loop = words.length
  while end_loop > 0 do
    end_loop -= 1
    # array index starts at 0, so 3 will not be identified, so we need to do minus 1.
    # end_loop = end_loop - 1 or end_loop -= 1
    # arrays start with 0, so we need to do end_loop -1 first, so that array displays actual length.

    new_sentence << words[end_loop]
    # << array method help to push from the array's last element.
    # end_loop 3 - 1 = 2, index 2 in the array has mango. will be moved to 1st position of new_sentence array.
  end
new_sentence.join(' ')
  # joins ["mango", "kiwi", "apple"] with a (" ")space, displays mango kiwi apple
end

puts reverse_string_order("apples kiwi mango" )