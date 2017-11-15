class Color
  attr_reader :r, :g, :b

  # Public: Initialize an RGB Color.
  # r - An Integer representing R level of an RGB color.
  # g - An Integer representing G level of an RGB color.
  # b - An Integer representing B level of an RGB color.
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (r*299 + g*587 + b*114) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r-another_color.r).abs +
    (g-another_color.g).abs +
    (b-another_color.b).abs
  end

  # Public: Find out if the given color combos have sufficient contrast.
  #
  # other - An RGB Color instance to compared with.
  #
  # Examples
  #
  #   Color.new(42, 42, 42).enough_contrast?(Color.new(210, 210, 210))
  #   # => true
  #
  # Returns true if there is enough contrast between two Colors, false otherwise.

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 &&
    hue_difference(another_color) > 500
  end
end

#test = Color.new(42, 21, 58).enough_contrast?(Color.new(240, 41, 25))
#test = Color.new(42, 42, 42).enough_contrast?(Color.new(210, 210, 210))

test_color1 = Color.new(42,21,58)
test_color2 = Color.new(100,200,255)

puts test_color1.brightness_index
puts test_color2.brightness_index
puts test_color1.brightness_difference(test_color2)
puts test_color1.hue_difference(test_color2)
puts test_color1.enough_contrast?(test_color2)
