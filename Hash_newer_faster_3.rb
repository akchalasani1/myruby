=begin
compare_by_identity → hsh
Makes hsh compare its keys by their identity,
i.e. it will consider exact same objects as same keys.

compare_by_identity? → true or false click to toggle source
Returns true if hsh will compare its keys by their identity.
=end

# use irb

h1 = { "a" => 100, "b" => 200, :c => "c" }
h1["a"]        #=> 100
h1.compare_by_identity
h1.compare_by_identity? #=> true
h1["a"]        #=> nil  # different objects.
h1[:c]         #=> "c"  # same symbols are all same.
