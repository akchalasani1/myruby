def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end

puts introduction(37, "Male", "Anil")
puts introduction(33, "Female", "Anila")
