class Calculator
  def add(num_1, num_2)
    puts "Addition of #{num_1} + #{num_2} = "
    num_1 + num_2
  end

  def substract(num_1, num_2)
    puts "Substraction of #{num_1} - #{num_2} = "
    num_1 - num_2
  end
end

test = Calculator.new()
puts test.add(10, 5)
puts test.substract(10, 5)
