=begin

 *** NOTE: This exercise shows that some while loops can be rewritten into for loops. ***
An increment operation is not needed because the for loop automatically
increments through the values of the range operator.
=end

  def range_loop(increment, upper_limit)

    numbers = []

=begin
    for number in (increment...upper_limit)
      puts "The number is : #{number}"
      numbers.push(number)
    end

    Note that the upper_limit parameter in this function indicates the number that
    WILL NOT be added to the numbers array. If we wanted the upper_limit number to be the
    last element added to the array, we would type (0..upper_limit) on line 22 instead.
    The numbers would then be 0, 1, 2, 3, 4, 5, 6.
=end

    (increment...upper_limit).each do |anil|
      puts "The number in variable anil is : #{anil}"
      numbers.push(anil)
      end

=begin
    puts "The Numbers:"

    for number in numbers
      puts number
    end
=end
    puts
    puts "The Numbers:"
    numbers.each {|num| puts num}
  end

  range_loop(2, 6)