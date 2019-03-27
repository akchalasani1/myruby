
def fibona(num)
  x = 0
  y = 1
  while x < num do
    puts x
    temp = x + y
    x = y
    y = temp
  end
end


fibona(10)

puts "----------------"


def fibonacci( n )
  return  n  if n <= 1
  fibonacci( n - 1 ) + fibonacci( n - 2 ) # Recursion model of calculation
end
puts fibonacci( 3 )

=begin

# New Modified version

def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end
puts fibonacci( 10 )
# => 55

# One liner

def fibonacci(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
end
puts fibonacci( 10 )
# => 55

=end