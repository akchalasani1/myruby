def cookie(a , b)
  c = a
  a = b
  b = c
  return a , b
end

new = cookie(5 , 3)
puts new

=begin
def cat(a , b)
  a = a + b
  b = a - b
  a = a - b
  return a , b
end

dog = cat(5 , 3)
puts dog
=end

def candy(sweet)
  yellow = sweet * 1000
  blue = yellow / 100
  red = blue / 50
  return yellow, blue, red
end

 start = 100
 yellow, blue, red = candy(start)
 
 puts "with a start of: #{start}"
 puts "we have %s yellow, %d blue and %d red" % candy(start)
