
in_file = ARGV.first

def print_every(anil1)
  puts anil1.read
end

def rewind(anil2)
  anil2.seek(0) #
end

def print_aline(line_count, anil3)
  puts "#{line_count}, #{anil3.gets.chomp}"
end

=begin
gets.chomp: The part that immediately drew my attention here was the print_a_line function. I could see the line number was given as an argument and simply printed. The second argument was a file object variable. But the gets.chomp was being called on this file object. How was this giving us one line from the file object at a time? I couldn’t wait for the study drills to figure it out so I looked up the gets method on the I/O class object.
When you run the gets method on the I/O object (a file object is an I/O object), the method reads the next line. It identifies the lines by the new line separators. The file object, f, remembers where the “cursor” is after each read (something it references to remembers). So, every time you call read on the file object, it returns the next line.
The chomp method is called on the string returned, and it removes the new line character at the end. 
=end

curnt_file = open(in_file)

puts "First let's print the whole file:\n"
print_every(curnt_file)

puts "Now let's rewind, kind of like a tape."
rewind(curnt_file)

puts "Let's print three lines: "

curnt_line = 1
print_aline(curnt_line, curnt_file)

curnt_line = curnt_line + 1
print_aline(curnt_line, curnt_file)

curnt_line = curnt_line + 1
print_aline(curnt_line, curnt_file)
