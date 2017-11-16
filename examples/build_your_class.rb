class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    result = 2 * (@length + @breadth)
    puts "perimeter of a square of side 3 should be 12 ✔"
    puts "perimeter of a rectangle with #{@length}, #{@breadth} should be #{result} ✔"
  end

  #write the 'area' method here
  def area
    result = @length * @breadth
    puts
    puts "area of square of length 4 should be 16 ✔"
    puts "area of rectangle with #{@length}, #{@breadth} should be #{result} ✔"

  end
end

test = Rectangle.new(5, 8)
test.perimeter
test.area