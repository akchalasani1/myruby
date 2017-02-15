# $ ruby ex16a.rb 16_a_test.txt

newfile = ARGV.first # gets the first argument
txt = open (newfile)

puts "Here is the name of new file: #{newfile}"

print txt.read
txt.close
