# Names, Variables, Code & Functions
# functions are created by using the word "def" means "define"

# this one is like your scripts with ARGV
# we named this function "print_two", or call "peanut" doesn't matter.
# better to have your fuction should have a short name that says what it does.
def print_two(*args) # *args (asterisk args), which is a lot like your argv parameter
# ....but for functions. asterisk tells ruby to take all arguments to the fuction and put them
# in args as a list, it's like argv that you've been using, but for functions.
# it's not normally used too often unless specifically needed. 
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this.
def print_two_again(arg1, arg2) # print_two_again is the name of this function.
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def print_one(arg1) # print_one is the name of this function.
  puts "arg1: #{arg1}"
end

# this one takes no arguments
# functions that don't have parameters do not need the () after them.
# but whould it be clearer if you wrote them anyway?
def print_none() # print_none is the name of this function.
  puts "I got nothin'."
end

print_two("anil", "kumar")
print_two_again("anil", "kumar")
print_one("First!")
print_none()
