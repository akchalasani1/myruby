# $ ruby ex20.rb ex20_test.txt

# Functions and Files

=begin
http://www.jstorimer.com/blogs/workingwithcode/7766081-5-reasons-you-should-use-ri-to-read-ruby-documentation
ri is a tool that ships with Ruby. It's a companion to rdoc, allowing you to
'display information about Ruby classes, modules, and methods' from your console.
Despite its usefulness it's often overlooked in favour of searching Google.
ri Documentation HELP is Faster Than The Web and it is consistent.
$ ri File
$ ri File#seek
$ ri -i  (for: Interactive Mode)

+= is a shorthand operator.
someVar += otherVar
is the same as
someVar = someVar + otherVar
And someVar = someVar + otherVar is the same as someVar = someVar.+(otherVar).
Feel free to write your own class and implement + on it, and you, too, can have the += magic!
That means x = x + y is the same as x += y .
=end

input_file = ARGV.first

# f is just an argument or functional variable, you can use any letter or word if you want.
#  It has a "read head," and you can "seek" this read head around the file to positions, then work with it there. Each time you do f.seek(0) you're moving to the start of the file.
# Each time you do f.read, you're reading a line from the file (input_file (ex: ex20_test.txt)), and moving the read head to right side, after the \n that ends that line. \n means new line.
#print_all function will print All lines in the file(input_file (ex: ex20_test.txt)).
def print_all(f)
  puts f.read
end

=begin
It has a "read head," and you can "seek" this read head around the file to positions, then work with it there. Each time you do f.seek(0) you're moving to the start of the file.
It seeks ("goes to", "attempts to find") a given position (as integer) in a stream.
In your code you define a new method called rewind which takes one argument.
When you call it with ---->  rewind(current_file)

you send the current_file (the one you have opened from disk or from anywhere else)
which is defined as:  ----->  current_file = File.open(input_file)

to the rewind method and it will "seek" to position 0 which is the beginning of the file.
You could for example make another method called almost_rewind and write:

def rewind(f)
  f.seek(5)
end
This would go 5 positions back in your stream.
=end

def rewind(f)
  f.seek(0)
end

# f just argument ex: ex18.rb or functional variable, it will carry the file object for(input_file (ex: ex20_test.txt)), , you can use any letter or word if you want.
# so f.gets takes or copies the 1st line from(input_file (ex: ex20_test.txt)) until it encounters a newline or end of the 1st line, then it stops.
# If you just use (.gets) it will add newline(\n) character automatically to the end of the string.
# (.chomp) avoid's creation of the newline, ignores (\n) character which was automatically created by ruby when gets is used.
# when you use (gets.chomp) to ask user input, user will answer and hit enter, in the same way f.gets will copie 1 new line from file(input_file (ex: ex20_test.txt)) each time it uses print_a_line function.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# current_line from bottom will pass value to line_count functional variable or argument. so the line_count prints 1, 2, 3,....
# current_file will pass value to functional variable or argument (f).

=begin
gets.chomp: The part that immediately drew my attention here was the print_a_line function. I could see the line number was given as an argument and simply printed. The second argument was a file object variable. But the gets.chomp was being called on this file object. How was this giving us one line from the file object at a time? I couldn’t wait for the study drills to figure it out so I looked up the gets method on the I/O class object.
When you run the gets method on the I/O object (a file object is an I/O object), the method reads the next line. It identifies the lines by the new line separators. The file object, f, remembers where the “cursor” is after each read (something it references to remembers). So, every time you call read on the file object, it returns the next line.
The chomp method is called on the string returned, and it removes the new line character at the end. 
=end

current_file = open(input_file)

puts "\nFirst let's print the whole file:"

print_all(current_file)

puts "\nNow let's rewind, kind of like a tape."

rewind(current_file)

puts "\nlet's print three lines:"

current_line = 1
print_a_line(current_line , current_file)

current_line = current_line + 1
# current_line += 1
print_a_line(current_line , current_file)

#current_line = current_line + 1
current_line += 1 # gives same result as above when using += shorthand notation.
print_a_line(current_line , current_file)
