# ri File
# ri File#open
# $ ruby ex15.rb ex15_sample.txt
# we need to give .txt file name, which is already created (ex: 16_a_test.txt) as argument while executing ($ ruby ex15.rb ex15_sample.txt).

# "commands" are just "functions" / "methods" you can give to files ex: open, exists, read, close.
# All sorts of commands(methods/functions) that can be given to files. (close, read, readline, truncate, write('stuff'), seek(0) )

# created a variable and made the value ARGV argument, so user can enter.
filename = ARGV.first # gets the first argument
# for now just remember that you use ARGV.first to get only one argument.
# by using ARGV we can give the file name at the start and let the script run
#for 1000 times, if we give the file name in the middle with gets.chomp some one should be there to give 1000 times.
# filename = gets.chomp
# using a method /funtion open to open the given file name.
# txt & txt_again can be any name ex: anil, txt is just a variable declared.
txt = File.open(filename)
# displaying the name of the file name to user.
puts "Here's your file...  #{filename}:"
# we are calling a function read on txt (variable).
# What you get back from (open) is a file, and it also has commands you can give it.
# you give a file a command by using the . (dot or period), the name of the command,
# and parameter. just like with open and gets.chomp. the difference is that txt.read says
# "Hey txt! do your read command with no parameters!"
# "read" is a method/ function
print txt.read()
# Have your script also call close() on the txt and txt_again variables. It's important to close files when you are done with them.
txt.close
# ruby will not restrict file opening twice, some times this is necessary.
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = File.open(file_again)
print txt_again.read()
txt_again.close

# Start irb to start the irb shell.
=begin
irb(main):003:0> txt = File.open("ex15_sample.txt")
=> #<File:ex15_sample.txt>
irb(main):004:0> puts txt.read()
This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.
=> nil
irb(main):005:0> txt.close()
=> nil
irb(main):006:0>
=end
