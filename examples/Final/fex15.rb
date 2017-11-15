=begin
filename = ARGV.first

anil = File.open(filename)

puts "Here's your file...#{filename}: "
print anil.read()
anil.close
=end


print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = File.open(file_again)

print txt_again.read()
txt_again.close


=begin
➜  Final git:(acair) ✗ irb
irb(main):001:0> anil = "fex15_sample.txt"
=> "fex15_sample.txt"
irb(main):002:0> txt = File.open(anil)
=> #<File:fex15_sample.txt>
irb(main):003:0> puts txt.read()
This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.
=> nil
=end
