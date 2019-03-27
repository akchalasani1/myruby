# While loop inside a function.


def fib(num)
 n1 , n2 = 0 , 1
   while n1 <= num do
     puts n1
     n1 , n2 = n2 , n1 + n2
   end
end

fib(10)


=begin
def fib_num(places)

  a = 0
  b = 1

  while a <= places do # loop exits once a <= places in this case 8, next fibonacci number is 13 which is less than or equal to places 10
    puts a
    a , b = b , a + b

  end
end

fib_num(10)  # fibonacci numbers upto given number ex:10

=end