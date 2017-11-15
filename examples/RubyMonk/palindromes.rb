# Returns true if a String is a palindrome, false otherwise.
# A palindrome is a word, phrase, number, or other sequence of characters
#which reads the same backward as forward, such as madam or racecar
def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
  downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end

 test = palindrome?('Race fast safe car')
 # test = palindrome?('Live not on Evil')
 # test = palindrome?('Never odd or even')
 # test = palindrome?('Yreka Bakey')

puts test
