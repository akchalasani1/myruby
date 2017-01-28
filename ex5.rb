# Every time you put " (double-quotes) around a piece of text, numbers and special characters,
# you have been making a string.
#  You embed variables inside a string by using a special #{}
#  sequence and then put the variable you want inside the {} characters.

name = 'anil K. Chalasani'
age = 36 # not a lie in 2009
height = 72 # inches
weight = 150 # lbs
kilograms = 0.453592 # 1 pound = 0.453592 kilograms
convert_pound_to_kilograms = kilograms * weight
centimeters = 2.54 # 1 inch = 2.54 cm
convert_inch_to_cm = centimeters * height
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's is #{height} inches or #{convert_inch_to_cm} centimeters tall."
puts "He's #{weight} pounds or #{convert_pound_to_kilograms} kilograms heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
