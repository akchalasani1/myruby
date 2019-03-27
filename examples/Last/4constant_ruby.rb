# you can’t define constants inside a method. displays error, "dynamic constant assignment”
# for constants, You just need to make the first letter an uppercase
# We use the "::" notation to access the constants located inside the module.

# def the_method
# 	ABC = 1  # displays error, "dynamic constant assignment”
# end

# https://www.rubyguides.com/2017/07/ruby-constants/

class Rubyblog
	URL = "blackbytes.info"
	Author = "Jesus Castello"
end

p Rubyblog::URL
p Rubyblog::Author

# Ruby constants can change. But you will see this warning message. Your program will still work fine, but you want to avoid this.
# ABC = 1 # 4constant_ruby.rb:18: warning: already initialized constant ABC
# ABC = 2 # 4constant_ruby.rb:17: warning: previous definition of ABC was here

