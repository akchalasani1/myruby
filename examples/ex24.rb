puts "Let's practice every thing."
puts 'You\'d need to know \'both escapes with \\ that do \n newlines and \t tabs.'

=begin
 the << is called a "heredoc" or "here document". It is used to create a multi-line string, and you use it by starting with << and an all caps word, in this case END.
 Multiline strings in Ruby 2.3 - the squiggly heredoc
It is another way (other than triple double quotes) to create multiline strings using the HEREDOC syntax.
 <<-HEREDOC
      Subscription expiring soon!
      Your free trial will expire in #{days_until_expiration} days.
      Please update your billing information.
    HEREDOC
=end

# below is just a variable with multiline string, using the HEREDOC syntax. <<END   END
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

=begin
I removed the END on line 23. I got two error message lines.

ex24.rb:38: can’t find string “END” anywhere before EOF
ex24.rb:7: syntax error, unexpected end-of-input, expecting tSTRING_CONTENT or tSTRING_DBEG or tSTRING_DVAR or tSTRING_END

Ruby is saying it cannot find the END string anywhere before the end of the file. (in the rest of the file). It is telling me that there is a syntax error,
it was expecting the string “END” to end the heredoc, but then the input ended. By having matching token strings at the beginning and end of the heredoc, this problem is fixed.

END is simply a token string. We can even replace both of the END words with hamburger, the code will still work the same. All that matters is that the token strings are the same.
=end

puts "---------"
puts poem
puts "---------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

=begin
The return from a function gives the line of code that called the function a result.
You can think of a function as taking input through its arguments and returning output through return.
=end 
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

=begin
 The last line uses a C style of inserting variables into Ruby strings that you find in many languages.
 You don't have to use it, but it's good to understand what it is when you see it.
=end
start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)

=begin
Summary
This exercise introduced me to heredoc in Ruby. I also reviewed using escape sequences,
creating functions with parameters, using returned values from functions,
and string interpolation.
=end
