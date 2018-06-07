# If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.

# When retry is called, all of the code in between begin and rescue is run again.
# It most definitely does not "pick up where it left off" or anything like that.

# If you don't provide some mechanism to limit retries, you will wind up with an infinite loop.

# Code in both the begin and rescue blocks are able to access the same retries variable in the parent scope.

# retry

begin
	retries ||= 0
	puts "try ##{ retries }"
	raise "the roof"
rescue
	retry if (retries += 1) < 3 # you can increase the try.
end

# ... outputs the following:
# try #0
# try #1
# try #2

## The Problem With retry
# While retry is great it does have some limitations.
# The main one being that the entire begin block is re-run. But sometimes that's not ideal.

# For example, imagine that you're using a gem that lets you post status updates to Twitter,
# Facebook, and lots of other sites by using a single method call.
# It might look something like this.

# SocialMedia.post_to_all("Zomg! I just ate the biggest hamburger")

# ...posts to Twitter API
# ...posts to Facebook API
# ...etc

# If one of the APIs fails to respond, the gem raises a SocialMedia::TimeoutError and aborts.
# If we were to catch this exception and retry,
# we'd wind up with duplicate posts because the retry would start over from the beginning.

# begin
# 	SocialMedia.post_to_all("Zomg! I just ate the biggest hamburger")
# rescue SocialMedia::TimeoutError
# 	retry
# end

# ...posts to Twitter API
# facebook error
# ...posts to Twitter API
# facebook error
# ...posts to Twitter API
# and so on
