# Functions and Files
=begin
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

def print_all(f)
  puts f.read
end
=begin
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

# f is the input file object, so f.gets eads from the file until it encounters a newline (\n)
# character The newline character is read, but nothing more. chomp chomps off the newline character.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "\nNow let's rewind, kind of like a tape."

rewind(current_file)

puts "\nlet's print three lines:"

current_line = 1
print_a_line(current_line , current_file)

current_line = current_line += 1
print_a_line(current_line , current_file)

current_line = current_line += 1
print_a_line(current_line , current_file)
