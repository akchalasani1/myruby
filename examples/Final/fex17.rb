cpyfrom_file, cpyto_file = ARGV

puts "Copying from #{cpyfrom_file} to #{cpyto_file}"

# we could do these two on one line, how?
# indata = open(from_file).read
in_file = open(cpyfrom_file)
indata = in_file.read

puts "The input file length is #{indata.length} bytes long."

puts "Does the output file exits? #{File.exist?(cpyto_file)}"
puts "Ready, hit Return to continue or CTRL-C to abort."
$stdin.gets

#File.open(cpyto_file, 'w').write(File.open(cpyfrom_file).read())

out_file = open(cpyto_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close
