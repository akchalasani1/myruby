# Ruby Exception Handling:-

# Everything from "begin" to "rescue" is protected. If an exception occurs during the execution
# of this block of code, control is passed to the block between "rescue" and "end".

# For each "rescue" clause in the "begin" block, Ruby compares the raised Exception against
# each of the parameters in turn. The match will succeed if the exception named in the
# rescue clause is the same as the type of the currently thrown exception,
# or is a super class of that exception.

# In an event that an exception does not match any of the error types specified,
# we are allowed to use an else clause after all the rescue clauses.

a = 10
b = "42"  # try just 42 with out ""

begin
	a + b
rescue
	puts "Hello --> Could not add variables a(#{a.class} and b #{b.class})"
else
	puts "a + b is #{a + b}"
end
