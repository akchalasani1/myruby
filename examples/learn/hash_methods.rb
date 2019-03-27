names = Hash.new
names[1] = "Anil"
names[2] = "Kumar"
names[3] = "Chalasani"

puts names.size
puts names.keys.inspect
puts names.values.inspect

puts dupli_name = names.dup

puts dupli_name.eql? names

puts names.empty?

puts names.clear
puts names.empty?

puts "------------"
domains = { :de=> "Germany", :sk=>"Slovakia",
            :no=>"Norway", :us=>"United States" }

puts domains.has_key? :de
puts domains.include? :no
puts domains.key? :me
puts domains.member? :sk
puts domains.has_value? "Slovakia"
puts domains.value? "Germany"

puts "____________"

stones = {1=> "garnet", 2=> "topaz",
3=> "opal", 4=> "amethyst"}

stones.each { |k, v| puts "Key:#{k}, Value:#{v}"}
stones.each_key { |key| puts "#{key}"}
stones.each_value { |val| puts "#{val}"}
stones.each_pair { |k, v| puts "Key: #{k}, Value: #{v}"}

puts "____________"

jobs = Hash.new
jobs[1] = "QA"
jobs[2] = "Dev"
jobs[3] = "PM"
jobs[4] = "Sales"
jobs[5] = "CS"

jobs.delete 4
puts jobs

p jobs.shift

puts "____________"

fruit = { 1 => "apple", 2 => "kiwi", 3 => "mango"}
p fruit.shift

puts "____________"

names = Hash.new
names[1] = "Jane"
names[2] = "Thomas"
names[3] = "Robert"
names[4] = "Julia"
names[5] = "Rebecca"

names.delete 4
puts names

p names.shift

puts names

puts "____________"

dep = Hash.new
dep[1] = "sales"
dep[2] = "marketing"
dep[3] = "qa"
dep[4] = "hr"
dep[5] = "cs"

puts dep.delete_if { |k, v| k <= 3}
puts dep
