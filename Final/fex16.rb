myfile = ARGV.first

puts "We are going to erase #{myfile}"
puts "If you don't want to erase,hit Control + C (^C)."
puts "If you want to erase, hit Enter/ Return key"

$stdin.gets

puts "Opening the file..."
target = open(myfile, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now i will ask you to enter 3 lines."

print "line 1: "
line1 = $stdin.gets.chomp

print "line 2: "
line2 = $stdin.gets.chomp

print "line 3: "
line3 = $stdin.gets.chomp

puts "I am going to write these to the file"

target.write (line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And we close the file"
target.close
