# http://innatewonderer.github.io/blog/ruby-exercise-1-triangle-of-numbers/
# Anils-MacBook-Air:examples anil$ ruby triangle_numbers_1.rb 4

array = (1..100000).to_a
order = 1
limit = ARGV[0].to_i

(1..limit).each do |number|
  array[order -1, number].each{|i| print "#{i}" }
  limit += number
  puts
end

