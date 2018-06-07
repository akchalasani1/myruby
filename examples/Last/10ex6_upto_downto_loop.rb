# The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks.
# Keep in mind that the braces syntax has a higher precedence than the do..end syntax.

# upto with non ruby style 'for loop'

def doubling_method(num)
	puts num * 2
end

for i in 1..3 do
	doubling_method(i)
end

puts

# Ruby style: upto

1.upto(3) do |i|
	puts i * 2		# try: puts "value is : #{i * 2}"
end

puts

#The Ruby style one-liner version:
1.upto(3){|i| puts i * 2}		# try: puts "value is : #{i * 2}"}

puts

# Ruby style: downto

10.downto(5) do |e|
	puts e		# try: puts "value is : #{e}"
end


puts
#The Ruby style one-liner version:
100.downto(90){|e| puts e, " "; sleep 1} # try: puts "value is : #{e}"
# SLEEP will slow down the printing by 1 second.

