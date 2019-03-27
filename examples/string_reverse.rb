# http://myprogrammingblog.com/2015/01/19/how-to-reverse-a-string-not-using-built-in-reverse-method-how-to-reverse-every-word-in-a-sentence-part1-is-ruby/

def reverse_word_order_in_a_sentence(string)
  raise StandardError.new('Passed string cannot be reversed because it is empty') if string.nil? || string.empty?
  words = string.split(" ")
  new_sentence = []
  end_loop = words.length
  while end_loop > 0
    end_loop -= 1 # arrays start with 0, so we need to do end_loop -1 first, so that array displays actual length, num = num - 1 or num -= 1
    new_sentence << words[end_loop]
  end
  new_sentence.join(' ')
end
puts reverse_word_order_in_a_sentence("apples kiwi mango")


def reverse_each_word_in_a_string(string)
  raise StandardError.new('Passed string cannot be reversed because it is empty') if string.nil? || string.empty?
  words = string.split(" ") #splitting string into an Array of words
  new_sentence = []
  words.each do |word|
    # doing the same thing as reverse_whole_string
    # but with each word from an array
    end_loop = word.length
    new_string = ''
    while end_loop > 0
      end_loop -= 1 # arrays start with 0, so we need to do end_loop -1 first, so that array displays actual length, num = num - 1 or num -= 1
      new_string += word[end_loop] #Reversing every letter of each word
    end
    new_sentence << new_string # appending every word to an new Array
    # or you could just do this: new_sentence << reverse_whole_string(word)
  end
  new_sentence.join(' ') #joining Array into a string delimited by spaces
end
puts reverse_each_word_in_a_string("apples kiwi mango")


def reverse_whole_string(string)
  raise StandardError.new('Passed string cannot be reversed because it is empty') if string.nil? || string.empty?
  end_loop = string.length
  new_string = ''
  while end_loop >= 0
    end_loop -= 1 # arrays start with 0, so we need to do end_loop -1 first, so that array displays actual length, num = num - 1 or num -= 1
    new_string += string[end_loop]
  end
  new_string
end
puts reverse_whole_string("apples kiwi mango")
