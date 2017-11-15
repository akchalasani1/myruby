# Language: Ruby, Level: Level 3

def factorial(n)
  res = 1;
  for i in 1..n do
    res = res * i;
  end
  return res;
end

x = gets();
result = factorial(x.to_i);
puts("Result: " + result.to_s);
