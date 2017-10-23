# While loop inside a function.

=begin
def fib(num)
 i , j = 0 , 1
   while i <= num do
     puts i
     i , j = j , i + j
   end
end

fib(10)
=end


def fib_num(places)

  a = 0
  b = 1

  while a <= places do # loop exits once a <= places in this case 8, next fibonacci number is 13 which is less than or equal to places 10
    puts a
    a , b = b , a + b

  end
end

fib_num(10)  # fibonacci numbers upto given number ex:10