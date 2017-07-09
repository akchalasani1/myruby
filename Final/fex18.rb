# this one is like your scripts with ARGV
def print_two(*args)
  arg1, arg2  = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this.
# arg1, arg2 ARE VARIABLES
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
# arg1 IS VARIABLES
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no argument
def print_none()
  puts "I got nothin'."
end

print_two("Anil", "C")
print_two_again("C", "Anil")
print_one("Anil!")
print_none()
