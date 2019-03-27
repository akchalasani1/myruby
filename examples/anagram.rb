def combine_anagrams(words)
  anagrams= { } # empty Hash
  words.each do |i|
    anagrams[i.downcase.split('').sort.join] ||= []
      # || (or)or, empty array [], cars gets sorted ascending to acrs
    anagrams[i.downcase.split('').sort.join] << i

  end
  anagrams.values
end

print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])


