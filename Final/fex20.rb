
in_file = ARGV.first

def print_every(anil1)
  puts anil1.read
end

def rewind(anil2)
  anil2.seek(0) #
end

def print_aline(line_count, anil3)
  puts "#{line_count}, #{anil3.gets}"
end

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
