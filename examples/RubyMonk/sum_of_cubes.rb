# Returns the sum of cubes for a given Range a through b.

def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

test = sum_of_cubes(3, 5)
puts test
