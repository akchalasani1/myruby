# Public: Measure the time taken to execute the code.
#
# proc - The Proc object to be executed.
# Returns Float number of seconds taken to execute the code.

def exec_time(proc)
  begin_time = Time.now
  proc.call
  Time.now - begin_time
end

test = exec_time proc { 10_000_000 / 5 }

puts test
