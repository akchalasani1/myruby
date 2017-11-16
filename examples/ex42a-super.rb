class Dog
  def sound()
    "BARK"
  end
end

class Bulldog < Dog
  def sound()
    # super invokes(appeal to (someone or something) as an authority for an action) parent class(Dog)for current object Bulldog.
    # in other words sub-class can invoke parent behaviour via super.
    super + " Bowwoo"
  end
end

tommy = Bulldog.new()
puts tommy.sound

