# $ ruby ex16a.rb 16_a_test.txt

newfile = ARGV.first
txt = open (newfile)

puts "Here is the name of new file: #{newfile}"

print txt.read
txt.close
