# Else and if
=begin
What happens if multiple elsif blocks are true?
Ruby starts at the top and runs the first block that is true,
so it will run only the first one.

You should know that Ruby has three kinds of code blocks you need to read.
You have the kind that if-statements use, where code is started after the if,
and the block of code is ended with end. You then have two kinds for .each style blocks.
Either you use do ... end or { |i| puts "I got it #{i}" } 

Rules for If-Statements
1. Every if-statement must have an else.
2. If this else should never run because it doesn't make sense,
then you must use a dead function in ex35 in the else that prints out an error message and dies,
 just like we did in the last exercise. This will find many errors.
abort("Message goes here")
3. Never nest if-statements more than two level deep and always try to do them one level deep.
4.Treat if-statements like paragraphs, where each if-elsif-else grouping is like a
set of sentences. Put blank lines before and after.
Your Boolean tests should be simple. If they are complex,
move their calculations to variables earlier in your function and use a good name
for the variable.
=end

people = 30
cars = 40
trucks = 15

  if cars > people
    puts "We should take the cars."

    elsif cars < people
      puts "We should not take the cars."

    else
      puts "We can't decide."

  end

  if trucks > cars
    puts "That's too many trucks."

    elsif trucks < cars
      puts "Maybe we could take the trucks."

    else
      puts "We still can't decide."

  end

  if people > trucks
    puts "All right let's take trucks."

    else
      puts "Fine, Let's just stay home then."

  end

  if cars > people || trucks < cars
    puts "This Conditional stament is True. (True || True = True)"

    else
      puts "This Conditional statement is False.(False || False = False)"

  end
