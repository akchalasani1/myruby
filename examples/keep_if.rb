# keep_if → Enumerator : Deletes every element of self for which the given code block evaluates to false.

a = %w{ a b c d e f g h i }
get_keepif_details = a.keep_if { |v| v =~ /[anil]/ }  # output => ["a", "i"]

puts get_keepif_details

=begin
arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
arr                       #=> [1, 2, 3]
=end