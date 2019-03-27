a1 = Array.new
a2 = Array.new 3
a3 = Array.new 6, "coin"
a4 = Array.new [11]
a5 = Array.new(15){ |e| e*e }
a6 = Array.new << 4.55 << 3.22 << 3.55 << 8.55

puts [a1, a2, a3, a4, a5, a6].inspect
