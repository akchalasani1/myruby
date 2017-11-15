module Ex25

  # This function will break up words for us.
  def Ex25.break_words(stuff)
    # .split splits the sentence into an array of words
    # it splits the words by looking at the ' ' blank spaces
    mycar = stuff.split(' ')
    # returns an array of words
    return mycar
  end

  # Sort the words.
  def Ex25.sort_words(mycare)
    # .sort sorts the list of words alphabetically
    return mycare.sort
  end

  # Prints the first word after shifting it off.
  def Ex25.print_first_word(book)
    # .shift takes an array(list of words), removes the first element, and returns it
    truck = book.shift
    puts truck
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(mycar)
    # .pop takes an array, removes the last element, and returns it.
    truck = mycar.pop
    puts truck
  end

  # Take in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    # break the sentence into an array of words
    # break_words is the function from top
    apple = Ex25.break_words(sentence)
    # returns the sorted array of words
    return Ex25.sort_words(apple)
  end

  # Prints the first and last words of the sentence
  def Ex25.print_first_and_last(sentence)
    # break the sentence into an array of words
    ball = Ex25.break_words(sentence)
    # calls the print_first_word function on the array
    Ex25.print_first_word(ball)
    # calls the print_last_word function on the array
    Ex25.print_last_word(ball)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    # calls the sort_sentence function on the sentence
    # we get the sorted array of words back
    nice = Ex25.sort_sentence(sentence)
    # call print_first_word on the sorted array
    Ex25.print_first_word(nice)
    # call print_last_word on the sorted array
    Ex25.print_last_word(nice)
  end

end

