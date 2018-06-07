# Using retry:-
# The "retry" statement redirects the program back to the begin statement.
# This is helpful if your "begin/rescue" block is inside a "loop" and
# you want to retry the same command and parameters that previously resulted in failure.

for i in 'A'..'C'
	retries = 2
	begin
		puts "Executing Command #{i}"
		raise "Exception: #{i}"
	rescue Exception=>e
		puts "\tCaught: #{e}"
		if retries > 0
			puts "\tTrying #{retries} more times\n"
			retries -= 1
			sleep 2
			retry 
		end

	end
end
