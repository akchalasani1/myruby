# $ ruby ex17.rb ex17_from_test.txt ex17_to_test.txt
# we can give .txt file name as argument to create a new .txt file while executing.

# write a ruby script to copy one file to another.
# "commands" are just "functions" and "methods" ex: open, exists, read.

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

####### We could do these below two lines in one line, how?
####### indata = open(from_file).read
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"
# File.exist?(to_file) is a function that tells us if the file exists on the disk.
puts "Does the output file exists? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to countinue, CTRL-C to abort."
$stdin.gets # creates empty line space and wait's for your input

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."
# If out_file & in_file is not closed.
# A File object which is no longer referenced becomes eligible for garbage collection.
# The file will be closed automatically when the File object is garbage collected.
# close = File + Save
out_file.close
in_file.close
