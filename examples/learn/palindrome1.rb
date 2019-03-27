
def name(sample)
  if sample.reverse == sample
    puts "Yes, #{sample} is a palindrome."
  else
    puts "No, #{sample} is not a palindrome."
  end
end

name("sore was i ere i saw eros")



