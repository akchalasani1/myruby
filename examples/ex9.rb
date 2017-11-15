days = "Mon Tue Wed Thu Fri Sat Sun"
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

# even when q is removed from the below line, every thing works normal.
puts %q{
  There's some thing going on here.
  With the three double-qotes.
  We'll be able to type as much as we like.
  Even 4 lines if we want, or 5, or 6.
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
