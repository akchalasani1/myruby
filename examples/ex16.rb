=begin
# $ ruby ex16.rb 16_a_test.txt
# we need to give .txt file name (ex: 16_a_test.txt) as argument while executing.
# A brand new (sample.txt) file name can be create by giving ex: 16_a_test.txt file as argument while executing ex: $ ruby ex16.rb 16_a_test.txt
# New .txt file will be created when this like is executed -> txt = open(filename, 'w') ONLY When 'w' is there.
# All sorts of commands(methods/functions) that can be given to files. (close, read, readline, truncate, write('stuff'), seek(0) )

# [By us asking to write a file, it in addition to making sure we are writing
# to the file also physically creates the file in the same step]

'w' Hint: open tries to be safe by making you explicityly say you want to write a file.
 This mode should be used when you only want to add data or rather write into a file.
 If you set a file to write only, you will not be able to read back from it.
 The file pointer starts at the beginning of the file. The file, if it exists, is overwritten.
  Otherwise, a new file is created.
=end
filename = ARGV.first # gets the first argument

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets  # creates empty line space and wait's for your input
#open(filename) open's it in 'r' (read) mode by default, for the open() function.
puts "Opening the file... #{filename}"
target = open(filename, 'w' ) # file name with extra 'w' parameter
# 'w' is just a string with a character in it for the kind of mode for the file.
# If you use 'w' then you're saying "open this file in 'write' mode," thus the 'w' character.
# There's also 'r' for "read", 'a' for append, and modifiers on these.
# most important modifiers for the file modes are + modifier,
# so you can do 'w+', 'r+', and 'a+' . This will open the file in both read and write mode,
# and depending on the character use position the file in different ways.
# just doing open(filename) open it in 'r' (read mode) by DEFAULT.

# Most important one to know for now is the + modifier, so you can do 'w+', 'r+', and 'a+'. This will open the file in both read and write mode and, depending on the character use, position the file in different ways.
puts "Truncating the file. Goodbye!"
# target.truncate(0) # not required when opening file with 'w' access
# but when we wipe out what ever is in there, here is where it pays to make sure...
=begin
The truncate method is redundant here because when a file is opened in write mode, the file will be truncated if it is an existing file. If the file does not yet exist, a new file will be created.
puts "Now I'm going to ask you for three lines."
=end

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."
=begin
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

# one line to cut the repetition in script ex16.rb line 44 to 49.
# write takes a parameter of a string you want to write to the file. ex1: line1 = $stdin.gets.chomp
# ex2: target.write(line1 + "\n").
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")
puts "And finally, we close it."
target.close
