# creating a format string with #{} %{}

# you will almost always use #{} to format your strings, but there are times when you
# ... want to apply the same format to multiple values. That's when %{} comes in handy.

# formatter is just name of the variable, you can put anil if u want
formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
# we put the formatter inside the formatter.
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter %{
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
