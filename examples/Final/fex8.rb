anil = "%{one} %{two} %{three} %{four}"

puts anil % {one: 1, two: 2, three: 3, four: 4}
puts anil % {one: "one", two: "two", three: "three", four: "four"}
puts anil % {one: true, two: false, three: true, four: false}

# formatter in side formatter

puts anil % {one: anil, two: anil, three: anil, four: anil}

puts anil % {
  one: "I have seen new movies",
  two: "I have played new games",
  three: "I listned new music",
  four: "I like new stuff"
}
