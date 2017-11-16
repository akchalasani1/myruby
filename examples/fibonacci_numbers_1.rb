# For loop inside a function.

def fib(n)
  a = 0
  b = 1

  n.times do
    temp = a
    a = b
    b = temp + b
  end

  return a
end

10.times do |n| # fibonacci numbers upto for-loop rotates 10 times
  result = fib(n)
  puts result
end
