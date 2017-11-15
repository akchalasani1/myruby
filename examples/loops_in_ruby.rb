=begin
The methods Array#each, Array#select etc.
are the most frequently used loops since the primary use of loops is to iterate over or transform a collection

## Infinite loops keep running till you explicitly ask them to stop.
## They are syntactically the simplest to write.
loop do
  puts "this line will be executed for an infinite amount of time"
end    # ctrl + z  to break the loop


https://launchschool.com/books/ruby/read/loops_iterators

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
=end



loop do
  monk.meditate
  break if monk.nirvana?
end


