=begin
Method overriding, in object oriented programming,
is a language feature that allows a subclass to provide a specific implementation
of a method that is already provided by one of its superclasses.
The implementation in the subclass overrides (replaces)
the implementation in the superclass.
=end

class A
  def a
    puts 'In class A'
  end
end

class B < A
  def a
    puts 'In class B'
  end
end

#ani = A.new
#ani.a

b = B.new
b.a

# The method a in class B overrides the method a in class A.