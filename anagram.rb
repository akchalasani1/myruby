def combine_anagrams(words)
  anagrams={}
  words.each do |word|
    anagrams[word.downcase.split('').sort.join] ||=[]
    anagrams[word.downcase.split('').sort.join] << word
  end
  anagrams.values
end

print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])

