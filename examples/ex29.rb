# what if

=begin
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

people = 20
cats = 30
dogs = 15

  if people < cats
    puts "Too many cats! The world is doomed!"
    else
  end

  if people > cats
    puts "Not many cats! The world is saved!"
    else
  end

  if people < dogs
    puts "The world is drooled on!"
    else
  end

  if people > dogs
    puts "The world is dry!"
    else
  end

  dogs += 5
  puts "Now dogs became: #{dogs} by using (dogs += 5),  ex: dogs = 15 + 5"

  if people >= dogs
    puts "People are greater than or equal to dogs."
    else
  end

  if people <= dogs
    puts "People are less than or equal to dogs."
    else
  end

  if people == dogs
    puts "People are equal to dogs."
    else
  end

  if !("testing" == "testing" && "Zed" == "Cool Guy")
    puts "The Conditional statement is TRUE. (True && False = False, !False = True)"
    else
  end
