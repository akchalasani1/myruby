# http://gregpark.io/blog/ruby-group-by/
# you can generally use group_by anywhere you’d be using #each or some iteration.
# The collection of objects that needs grouping (e.g., an array)
# group_by returns a hash where the keys are defined by our grouping rule, and the values are the corresponding objects from our original collection.
dups = %w{usa ind uk chin uk ind}.group_by{|e| e}.keep_if{|_, e| e.length > 1}

# dup = %w(usa ind uk chin uk ind)
# dup = ["usa", "ind", "chin", "tibet", "usa", "chin", "ind"]
# .group_by{|e| e} groups all similar country's and transfers into new variable 'e'
# keep_if → Enumerator : Deletes every element of self for which the given block evaluates to false.

puts "duplicate countrys are: #{dups.keys}"

  # in Ruby .map method is used to transform the contents of an array according specified set of rules
  # defined inside the code block K is keys and V is values
country = dups.map{|k, v| {k => v.length}}

  # country = dups.map{|a, b| {a => b.count}}

puts "Duplicated times : #{country}"