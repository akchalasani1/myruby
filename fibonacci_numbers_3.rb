
  def fibo_numb(places)

    a = 0
    b = 1

    places.each do # for loop
        puts a
    temp = a
    a = b
    b = temp + b
    end

    return a

  end

  fibo_numb(1..10) # fibonacci numbers upto given number ex:10
