# Escape sequence

# cannot comment in the """ string
# cannot put #{} in '''
# Use ''' when you need a multi-line string that contains #{} formatting,
# ... but you don't want them to be processed yet or at all.
# Use """ for all other multi-line strings.

puts "I am 6'2\" tall." # Escape double-quote inside string
puts 'I am 6\'2" tall.' # Escape single-quote inside string

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass

My new \a Toyota
\aHello world\a
My new\bHonda
My new \f BMW
My new \r Tesla
My new \v Ford
My new \o Acura
My new\sbenz
Hello\t\tworld
Hello\b\b\b\b\bGoodbye world
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
