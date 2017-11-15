def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number}
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number}
end

def calculate(*arguments)
  # if the last argument is a hash extract it
  # otherwise create an empty hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options [:subtract]
end

puts add(4, 5)
puts add(-10, 2, 3)
puts add(0, 0, 0, 0)
puts subtract(4, 5)
puts subtract(-10, 2, 3)
puts subtract(0, 0, 0, 0, -10)
puts "defaults to addtion when no option is specified"
puts calculate(4, 5, add: true)
puts calculate(-10, 2, 3, add: true)
puts calculate(0, 0, 0, 0, add: true)
puts calculate(4, 5, subtract: true)
puts calculate(-10, 2, 3, subtract: true)
puts calculate(0, 0, 0, 0, -10, subtract: true)