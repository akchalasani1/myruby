# Returns the given String sorted in ascending order by length.
def sort_string(string)
  string.split(' ').sort {|x, y| x.length <=> y.length}.join(' ')
end

test = sort_string("Sort words in a sentence")
puts test

=begin
a = [ "d", "a", "e", "c", "b" ]
a.sort                    #=> ["a", "b", "c", "d", "e"]
a.sort {|x,y| y <=> x }   #=> ["e", "d", "c", "b", "a"]
=end
