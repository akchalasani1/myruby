# If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.
# retry lets you retry a piece of code in a block

# https://blog.appsignal.com/2018/06/05/redo-retry-next.html
  10.times do |i|
    begin
      puts "Iteration #{i}"
      raise if i > 2
    rescue
      retry
    end
  end


=begin

This will print:

$ ruby retry.rb
Iteration 0
Iteration 1
Iteration 2
Iteration 3
Iteration 3
Iteration 3 (falls into infinity loop)

begin
  puts "Iteration"
  raise
rescue
  retry
end

Iteration (falls into infinity loop)
=end
