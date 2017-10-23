cars = "Toyota BMW Honda Ford"
models = "\ncamary\n5series\ncivic\nmustang"

puts "Top cars of the year: #{cars}"
puts "Top models of the year: #{models}"

puts %{
  These are the awsome brands of the year.
  thy made really good models.
  i like them because they are very trending.
  lot of people purchased them.
  most of them are happy customers.
}


=begin

Besides %(...) which creates a String, The % may create other types of object.
As with strings, an uppercase letter allows interpolation and escaped characters while a lowercase letter disables them.
%Q[ ] - Interpolated String (default)

%q[ ] - Non-interpolated String (except for \ , [ and ])

%q(no interpolation)

%Q(interpolation and backslashes)

%(interpolation and backslashes)

➜  myruby git:(acair) ✗ irb
irb(main):001:0> x = "hi"
=> "hi"
irb(main):002:0> p %Q[#{x} Ram!]
"hi Ram!"
=> "hi Ram!"
irb(main):003:0> p %q[#{x} Ram!]
"\#{x} Ram!"
=> "\#{x} Ram!"
irb(main):004:0> p %Q[th\e]
"th\e"
=> "th\e"
irb(main):005:0> p %q[th\e]
"th\\e"
=> "th\\e"

=end
