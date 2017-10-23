def check_sign(number)
  if number == 0
    number
  elsif number > 0
     "#{number} is positive"
  else
     "#{number} is negative"
  end
end

puts check_sign(1)
