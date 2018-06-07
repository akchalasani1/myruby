# Next

i = 20
loop do
	i -= 1
	next if i.odd?
	puts "#{i}"
	break if i <= 0
end
