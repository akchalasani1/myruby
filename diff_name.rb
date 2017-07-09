module Ex25

  # This function will break up words for us.
  def Ex25.break_words(stuff)
    mycar = stuff.split(' ')
    return mycar
  end

  # Sort the words.
  def Ex25.sort_words(mycare)
    return mycare.sort
  end

  # Prints the first word after shifting it off.
  def Ex25.print_first_word(book)
    truck = book.shift
    puts truck
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(mycar)
    truck = mycar.pop
    puts truck
  end

  # Take in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    apple = Ex25.break_words(sentence)
    return Ex25.sort_words(apple)
  end

  # Prints the first and last words of the sentence
  def Ex25.print_first_and_last(sentence)
    ball = Ex25.break_words(sentence)
    Ex25.print_first_word(ball)
    Ex25.print_last_word(ball)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    nice = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(nice)
    Ex25.print_last_word(nice)
  end

end
