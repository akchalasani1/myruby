# Can I use single-quotes or double-quotes to make a string or do they do different things?
# In Ruby the " (double-quote) tells Ruby to replace variables it finds with #{}, but the ' (single-quote) tells Ruby to leave the string alone and ignore any variables inside it.

# below 4 lines are just printing string
puts "Mary had a little lamb."
# show will get printed since it is not a variable, below green line is just a string with
# ... word show it it, A variable wouldn't have the single-quotes around it.
# In ruby the (double-quote) "This string has variable #{variable}" tell ruby to replace variables it finds with #{},
# but the (single-quote) 'In this string ruby will ignore variable #{variable}' tells ruby to leave the string a lone and ignore any variables inside it.

puts "Its fleece was white as #{'show'}."
puts "And every where that Mary went."
puts "." * 10 # this will print "." Ten times

# Variable end.. declared on the left with value on the right.
end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# print vs. puts : The primary difference between them is that puts adds a newline after executing, and print does not.
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12
