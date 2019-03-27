def reverse_each_word(sentence)
  words = sentence.split(" ")
    new_string = []
    words.each do |sample|
      end_point = sample.length
      new_sentence = ' ' # empty variable can be "" also or ''
    while end_point > 0 do
      end_point -= 1
      new_sentence += sample[end_point]
    end
      new_string << new_sentence
  end
    new_string.join(' ')
end

  puts reverse_each_word("apple kiwi mango")