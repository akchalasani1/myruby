color = "Red"

  def method1
    color = 192
    puts("Color value in method1: #{color}")
  end
  
  def method2
    color = 225
    puts("Color value in method2: #{color}")
  end
  
  method1
  method2
  method1
  puts("Color value outside method: #{color}")
  
  
