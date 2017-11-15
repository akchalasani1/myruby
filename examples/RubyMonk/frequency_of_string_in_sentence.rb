def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end

# [9,3,4,9,5].count(9)
# Will return the value 2
# word 'do' is getting displayed in sentence twice.
#result = find_frequency('Do or do not... there is no try.', 'do')
result = find_frequency('Frequency of the word hello in the sentence hello', 'hello')

print result
