# write a ruby script to copy one file to another.
# "commands" are just "functions" and "methods" ex: open, exists.

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"
# File.exist?(to_file) is a function that tells us if the file exists on the disk.
puts "Does the output file exists? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to countinue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."
# If out_file is not closed.
# A File object which is no longer referenced becomes eligible for garbage collection.
# The file will be closed automatically when the File object is garbage collected.
out_file.close
in_file.close
