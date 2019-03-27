class String

  def total_words
    scan(/\w+/).count
  end

  def word_list
    list = Hash.new(0)
    downcase.scan(/\w+/) { |w| list[w] += 1 }
  end

end


#total_words("- The quick brown fox / jumped over the lazy fox.")
