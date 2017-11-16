class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end

puts
puts "Tandem :"
t = Tandem.new(2)
puts t.wheels
puts t.seats
puts t.gears

puts
puts "Bicycle :"
b = Bicycle.new()
puts b.wheels
puts b.seats
puts b.gears
