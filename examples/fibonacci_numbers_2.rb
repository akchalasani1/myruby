def fib_numb(n)
  a = 0
  b = 1

    n.times do
      puts a
      temp = a
      a = b
      b = temp + b
    end
  return a
end


fib_numb(10) # fibonacci numbers upto for-loop rotates 10 times


