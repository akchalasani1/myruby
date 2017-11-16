
def check_languages(ordinal)
  languages = ['ruby', 'python', 'c', 'perl', 'c++', 'cobal', 'fortran', 'pascal']

  if ordinal >= 1 && ordinal <= languages.length
    puts "The language at ordinal #{ordinal} is %s and is at cardinal value #{ordinal-1}" % languages[ordinal-1]

  else
    puts "Sorry, you have entered invalid value for this test."

  end
end

check_languages(1)
check_languages(2)
check_languages(3)
check_languages(4)
check_languages(5)
check_languages(6)
check_languages(7)
check_languages(8)
check_languages(9)

