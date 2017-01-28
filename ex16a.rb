newfile = ARGV.first
txt = open (newfile)

puts "Here is the name of new file: #{newfile}"

print txt.read
txt.close
