class Testinstance
  @color = "Red"
  puts "color: #{@color}"
  
  def method1
    @color = 192
    puts("Color value in method1: #{@color}")
  end
  
  def method2
    @color = 225
    puts("Color value in method2: #{@color}")
  end
  
  def final_res
    puts("#{@color}")
  end
end

result = Testinstance.new()
result1 = Testinstance.new()

puts result.method1
puts result.method2
puts result.final_res
