# In Ruby, ? and : can be used to mean "then" and "else" respectively.

def check_sign(number)
  number > 0 ?  "#{number} is positive" :  "#{number} is negative"
end

puts check_sign(4)