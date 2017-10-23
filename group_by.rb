# http://gregpark.io/blog/ruby-group-by/
=begin
Ruby’s #group_by method provides a way to (wait for it) group things by some arbitrary property.
It’s part of the Enumerable module, so you can generally use it anywhere you’d be using #each or some iteration.
To use #group_by, you first need to know two things:
The collection of objects that needs grouping (e.g., an array)
The rule by which you want to group those objects
#group_by returns a hash where the keys are defined by our grouping rule in code block {},
and the values are the corresponding objects from our original collection (e.g., an array).
=end
# create a list of names
names = ["Ripley", "McClane", "Ryerson", "Murphy"]
# group_by first letter
names_by_letter = names.group_by {|name| name[0]}
#names_by_letter = names.group_by {|i| i[0]}

puts names_by_letter

# Results :
=begin
{
    "R" => [
        [0] "Ripley",
        [1] "Ryerson"
    ],
    "M" => [
        [0] "McClane",
        [1] "Murphy"
    ]
 }

or

{"R"=>["Ripley", "Ryerson"], "M"=>["McClane", "Murphy"]}

=end