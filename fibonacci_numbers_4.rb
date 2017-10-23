def fibo_numb(places)

  a = 0
  b = 1

  (0..places).each do # for loop
    puts a
    temp = a + b
    a = b
    b = temp
  end
  return a
end

print "Enter any number: "
fibno = gets.to_i
fibo_numb(fibno) # fibonacci numbers upto given number ex:10
