## Continuations to the Rescue
# A continuation is like a  "save point" in your code, just like in a video game.
# You can go off and do other things, then jump back to the save point and everything will be as you left it.
# so it's not a perfect analogy, but it kind of works.

#require "continuation"
#counter = 0
#continuation = callcc { |c| c } # define our savepoint
#puts(counter += 1)
#continuation.call(continuation) if counter < 5 # jump back to our savepoint

# We use the callcc method to create a Continuation object. There's no clean OO syntax for this.

# The first time the continuation variable is assigned, it is set to the return value of callcc's block.
# That's why the block has to be there.

# Each time we jump back to the savepoint, the continuation variable is assigned whatever argument we pass the call method.
# That's why we use the weird looking continuation.call(continuation)   syntax.

# http://blog.honeybadger.io/how-to-try-again-when-exceptions-happen-in-ruby/
