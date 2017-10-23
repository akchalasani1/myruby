# http://gregpark.io/blog/ruby-group-by/
dups = ["america", "india", "china", "tibet", "india", "mexico", "america", "england", "china", "india"].group_by{|e| e}.keep_if{|_, e| e.length > 1}

# .group_by{|e| e} groups all similar country's and transfers into new variable 'e'
# keep_if → Enumerator : Deletes every element of self for which the given block evaluates to false.

puts "duplicate countrys are: #{dups.keys}"

# in Ruby .map method is used to transform the contents of an array according specified set of rules
# defined inside the code blcok K is keys and V is values
country = dups.map{|k, v| {k => v.length}}

# country = dups.map{|a, b| {a => b.length}}

puts "Duplicated times : #{country}"