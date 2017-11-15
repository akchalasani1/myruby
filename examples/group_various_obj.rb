=begin
##Example #3: Grouping various objects
The collection: an array of various classes of objects
The rule: group objects by class
=end

# Create a list of objects
array_of_fun = ["Bob", 89, [1, 2, 3], Hash.new, (0..10).to_a, "Gene", 5]
# group objects by class
get_obj = array_of_fun.group_by { |thing| thing.class }
puts get_obj

=begin
{String=>["Bob", "Gene"], Fixnum=>[89, 5], Array=>[[1, 2, 3], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]], Hash=>[{}]}

or

#{
#     String < Object => [
#        [0] "Bob",
#        [1] "Gene"
#    ],
#    Fixnum < Integer => [
#        [0] 89,
#        [1] 5
#    ],
#      Array < Object => [
#        [0] [
#            [0] 1,
#            [1] 2,
#            [2] 3
#        ],
#        [1] [
#            [ 0] 0,
#            [ 1] 1,
#            [ 2] 2,
#            [ 3] 3,
#            [ 4] 4,
#            [ 5] 5,
#            [ 6] 6,
#            [ 7] 7,
#            [ 8] 8,
#            [ 9] 9,
#            [10] 10
#        ]
#    ],
#       Hash < Object => [
#        [0] {}
#    ]
#}
=end